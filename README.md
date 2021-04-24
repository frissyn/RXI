# RXI

**RXI**, or Ruby-XInput, is an FFI for the native XInput Windows API. RXI has some Quality of Life features, like namespaces and common enum values. It's currently a work in progress, and has only been tested with my wired Xbox One Controller on Windows 10, so use at your discretion. There's not even a gem yet, so you'll have to download or clone this repo to use it. =P

### Quickstart

Vibrate a controller at low motor speed:
```ruby
require 'rxi'

port = 0
state =  RXI::XINPUT_STATE.new
vibration = RXI::XINPUT_VIBRATION.new

vibration[:wLeftMotorSpeed] = RXI::Vibration::LOWER
vibration[:wRightMotorSpeed] = RXI::Vibration::LOWER

loop do
    puts RXI.set_state(port, vibration)
end
```

### Installation

RXI is not a gem yet, so git clone and `require_relative` will have to do for now.

### Documentation

Coming Soon™️
