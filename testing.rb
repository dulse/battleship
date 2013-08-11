require "./models/board.rb"

	@empty_space = " [ ]"
	@attacked_space = " [X]"
	@occupied_space = " [B]"
	@attacked_occupied_space = " [H]"
	@first_row = ["    A", "   B", "   C", "   D", "   E", "   F", "   G", "   H", "   I", "   J"]


def attack_a_space(coordinate)
		column = coordinate[0]
		row = coordinate[1..2].to_i
		if column == "a"
			column = 1
		elsif column == "b"
			column = 2
		elsif column == "c"
			column = 3
		elsif column == "d"
			column = 4
		else puts "Hey! Bad column! Try again!"
		end

		puts column
		puts row
		
		# @board[row].slice!(column)
		# @board.create_board[row].insert(column, @attacked_space)
		# puts create_board[10]
end


# @board = Board.new
# @board.create_board
# # @board.print_board

board = Board.new

puts board.create_board.class

# puts "Player 1, where do you want to attack?"

# @board.coordinate = gets.chomp.to_s
# attack_a_space(@board.coordinate)



# puts coordinate

	# puts @first_row.join
	# puts create_board[0..1].join
	# puts create_board[2..3].join
	# puts create_board[4..5].join
	# puts create_board[6..7].join
	# puts create_board[8..9].join
	# puts create_board[10..11].join
	# puts create_board[12..13].join
	# puts create_board[14..15].join
	# puts create_board[16..17].join
	# puts create_board[18..19].join