class Game

	attr_reader :board
	attr_accessor :player_1, :player_2

	def initialize
		@player_1 = Player.new
		@player_2 = Player.new
		win_condition
	end

	def greeting
		puts "Welcome to Battleship!"
		puts "Let's start a new game."
		# sleep(1)
	end

	def create_board
		board = Board.new
	end

	def boat(location)
		[[0,0], [1,0], [2,0], [3,0]]
	end


	def win_condition
		while player_1.life > 0 && player_2.life > 0
			turn
		end
		puts "Congratz! You're done!"
	end

	def turn
		player_1.board.display_board false
		player_1.attack_a_space
		player_2.board.display_board false
		player_2.attack_a_space
	end

end