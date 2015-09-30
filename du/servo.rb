require 'bundler/setup'
require 'dino'

board = Dino::Board.new(Dino::TxRx::Serial.new)
servo = Dino::Components::Servo.new(pin: 10, board: board)

[0, 90].cycle do |angle|
	require "pry";binding.pry
	servo.position = angle
	sleep 2
end


