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
            :ThumbLX, :int,
            :ThumbLY, :int,
            :ThumbRX, :int,
            :ThumbLY, :int
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