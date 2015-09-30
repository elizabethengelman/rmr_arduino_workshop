require 'bundler/setup'
require 'dino'


board = Dino::Board.new(Dino::TxRx::Serial.new)
button = Dino::Components::Button.new(pin: 6, board: board)
led = Dino::Components::Led.new(pin: 12, board: board)
servo = Dino::Components::Servo.new(pin: 10, board: board)

button.down do 
	puts "button NOT pressed"

	led.off
	servo.position = 90
end

button.up do
	led.on
	`say -v Bells "dong"`
	sleep 0.2
	`say -v Bells "dong"`
	sleep 0.2
	`say -v Bells "dong"`	
	sleep 0.3	
	servo.position = 0
	sleep 0.8
	`say "boom"`
	
end

servo.position = 90
sleep



