require 'rxi'

# Get Player 0's Controller and create an input state
port = 0
state = Gamepad::XINPUT_STATE.new

# Create a vibration struct to control motor's
vibration = Gamepad::XINPUT_VIBRATION.new

# Set left and right motor's to a low speed (16383)
vibration[:wLeftMotorSpeed] = Gamepad::Vibration::LOWER
vibration[:wRightMotorSpeed] = Gamepad::Vibration::LOWER

# Enable state getting/setting
RXI.enable(true)

# Infinitely update controller state
loop do
    puts Gamepad.set_state(port, vibration)
end