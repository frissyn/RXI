require 'ffi'

require_relative 'rxi/structs'
require_relative 'rxi/values'

module RXI
    include Values
    include Structs
    
    extend FFI::Library

    ffi_lib 'Xinput1_4'
    ffi_convention :stdcall

    attach_function :enable, :XInputEnable, [ :bool ], :int
    attach_function :get_state, :XInputGetState, [ :int, XINPUT_STATE.by_ref ], :pointer
    attach_function :set_state, :XInputSetState, [ :int,  XINPUT_VIBRATION.by_ref ], :pointer
    attach_function :get_battery, :XInputGetBatteryInformation, [ :int, :int, XINPUT_BATTERY_INFORMATION.by_ref ], :pointer
    attach_function :get_keystroke, :XInputGetKeystroke, [ :int, :int, XINPUT_KEYSTROKE.by_ref ], :pointer

    class XboxController
        attr_reader \
            :index,
            :state,
            :battery,
            :keystroke,
            :vibration
        
        def initialize(index)
            @index = index
            @state = RXI::XINPUT_STATE.new
            @keystroke = RXI::XINPUT_KEYSTROKE.new
            @vibration = RXI::XINPUT_VIBRATION.new
            @battery = RXI::XINPUT_BATTERY_INFORMATION.new
        end

        def get_battery()
            RXI.get_battery(@index, 0, @battery)
            return @battery
        end

        def get_keystroke()
            RXI.get_keystroke(@index, 0, @keystroke)
            return @keystroke
        end

        def get_state()
            RXI.get_state(@index, @state)
            return @state
        end

        def set_state(state, vibration)
            RXI.set_state(index, vibration)
            return @state
        end
    
        def vibrate(left, right)
            @vibration[:wLeftMotorSpeed] = left
            @vibration[:wRightMotorSpeed] = right
    
            RXI.set_state(@index, @vibration)
    
            return @vibration
        end
    end
end