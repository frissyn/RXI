module Controller
    class Buttons
        DPAD_UP = 1
        DPAD_DOWN = 2
        DPAD_LEFT = 4
        DPAD_RIGHT = 8

        LEFT_THUMBSTICK = 64
        RIGHT_THUMBSTICK = 128

        LEFT_BUMPER = 256
        RIGHT_BUMPER = 512
        LEFT_TRIGGER = 16711680
        RIGHT_TRIGGER = -16777216

        Y = 32768
        A = 4096
        X = 16384
        B = 8192
    end

    class Vibration
        LOWEST = 0
        LOWER = 16383
        HALF = 32767
        HIGHER = 49151
        HIGHEST = 65535
    end
end