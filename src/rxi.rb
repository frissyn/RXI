require 'ffi'
require_relative 'rxi/structs'
require_relative 'rxi/controller'

module RXI
    include Structs
    include Controller

    extend FFI::Library

    ffi_lib 'Xinput1_4'
    ffi_convention :stdcall

    attach_function :enable, :XInputEnable, [ :bool ], :int
    attach_function :get_state, :XInputGetState, [ :int, XINPUT_STATE.by_ref ], :pointer
    attach_function :set_state, :XInputSetState, [ :int,  XINPUT_VIBRATION.by_ref ], :pointer
    attach_function :get_battery, :XInputGetBatteryInformation, [ :int, XINPUT_BATTERY_INFORMATION.by_ref ], :pointer
end