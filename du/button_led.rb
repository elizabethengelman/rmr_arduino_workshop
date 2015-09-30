require 'bundler/setup'
require 'dino'

board = Dino::Board.new(Dino::TxRx::Serial.new)
button = Dino::Components::Button.new(pin: 6, board: board)
led = Dino::Components::Led.new(pin: 12, board: board)

button.down do 
	puts "button NOT pressed"
	led.off
end

button.up do
	puts "button pressed!"
	led.on
end

sleep
