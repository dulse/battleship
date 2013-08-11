class Player

	attr_accessor :name, :board

	def initialize
		@name = name
		@board = Board.new
		new_board_with_boats
	end

	def greeting
		puts "Cool, hey #{@name}."
	end

	def attack_a_space
		puts "OK player, where do you want to attack? Format like this: b 10"
		attack = gets.chomp.split
		row_num = attack[1].to_i - 1
		dictionary = {"a" => 0, "b" => 1, "c" => 2, "d" => 3, "e" => 4, "f" => 5, "g" => 6, "h" => 7, "i" => 8, "j" => 9}
		col_num = dictionary[attack[0]]
		board.attack(row_num, col_num)
	end

	def new_board_with_boats
		@board = Board.new
		battleship = Ship.new
		boat_location = { battleship => [[0,0], [1,0], [2,0], [3,0]] }
		@board.set_boats(boat_location)
	end

	def life
		board.boats[0].life
	end

end