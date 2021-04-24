require 'rxi'

# Get Player 0's Controller and create an input state
port = 0
state = RXI::XINPUT_STATE.new

# Create a vibration struct to control motors
vibration = RXI::XINPUT_VIBRATION.new

# Set left and right motors to a low speed (16383)
vibration[:wLeftMotorSpeed] = RXI::Vibration::LOWER
vibration[:wRightMotorSpeed] = RXI::Vibration::LOWER

# Enable state getting/setting
RXI.enable(true)

# Infinitely update controller state
loop do
    puts RXI.set_state(port, vibration)
end
