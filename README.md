# RXI

**RXI**, or Ruby-XInput, is an FFI for the native XInput Windows API. RXI has some Quality of Life features, like namespaces and common enum values. It's currently a work in progress, and has only been tested with my wired Xbox One Controller on Windows 10. Use at your discretion. There's not even a gem yet, so you'll have to download or clone this repo to use it. =P

### Quickstart Examples

Vibrate a controller:
```ruby
require 'rxi'

port = 0
state = Gamepad::XINPUT_STATE.new
vibration = Gamepad::XINPUT_VIBRATION.new

vibration[:wLeftMotorSpeed] = Gamepad::Vibration::LOWER
vibration[:wRightMotorSpeed] = Gamepad::Vibration::LOWER

loop do
    puts Gamepad.set_state(port, vibration)
end
```

### Installation

Not a gem yet, so git clone and `require_relative` will have to do for now.

### Documentation

Coming Soon™️
