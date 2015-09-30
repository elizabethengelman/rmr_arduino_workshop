require 'bundler/setup'
require 'dino'

board = Dino::Board.new(Dino::TxRx::Serial.new)
button = Dino::Components::Button.new(pin: 6, board: board)

button.down do 
	puts "button NOT pressed"
end

button.up do
	puts "button pressed!"
end

sleep
