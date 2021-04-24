require 'ffi'

module Structs
    class XINPUT_BATTERY_INFORMATION < FFI::Struct
        layout \
            :BatteryType, :int,
            :BatteryLevel, :int
    end

    class XINPUT_GAMEPAD < FFI::Struct
        layout \
            :wButtons, :int,
            :bLeftTrigger, :int,
            :bRightTrigger, :int,
            :sThumbLX, :int,
            :sThumbLY, :int,
            :sThumbRX, :int,
            :sThumbRY, :int
    end

    class XINPUT_KEYSTROKE < FFI::Struct
        layout \
            :VirtualKey, :int,
            :Unicode, :bool,
            :Flags, :int,
            :UserIndex, :int,
            :HidCode, :int
    end

    class XINPUT_STATE < FFI::Struct
        layout \
            :dwPacketNumber, :int,
            :Gamepad, XINPUT_GAMEPAD
    end

    class XINPUT_VIBRATION < FFI::Struct
        layout \
            :wLeftMotorSpeed, :int,
            :wRightMotorSpeed, :int
    end
end