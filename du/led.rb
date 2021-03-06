require 'bundler/setup'
require 'dino'

board = Dino::Board.new(Dino::TxRx::Serial.new)
led = Dino::Components::Led.new(pin: 12, board: board)

[:on, :off].cycle do |switch|
	led.send(switch)
	sleep 0.5
end


