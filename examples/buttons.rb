require 'rxi'

# Get Player 0's Controller and create an input state
port = 0
state = RXI::XINPUT_STATE.new

# Enable state getting/setting
RXI.enable(true)

loop do
    # Get current controller state
    RXI.get_state(port, state) 

    # Get current button bit mask (-16777216..16711680)
    buttonMask = state[:Gamepad][:wButtons]

    # Prompt for matching button values
    case buttonMask
    when RXI::Buttons::A
        puts "Pressed [A]"
    when RXI::Buttons::B
        puts "Pressed [B]"
    when RXI::Buttons::X
        puts "Pressed [X]"
    when RXI::Buttons::Y
        puts "Pressed [Y]"
    end

    # Wait an interval
    sleep 0.089
end