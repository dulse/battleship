class Board

	attr_accessor :coordinate, :boats

	def initialize
		@spaces = {}

		(0..9).each do |row_num|
			(0..9).each do |col_num|
				coords = [row_num, col_num]
				@spaces[coords] = Space.new
			end
		end
	end

	def set_boats(locations)
		@boats = []
		# {boat_passed_in => [[0, 0], [0, 1], [0, 2]] }

		locations.each do |boat_passed_in, coords|
			@boats << boat_passed_in
			coords.each do |coord|
				space = @spaces[coord]
				space.boat = boat_passed_in
			end
		end
	end



	# def initialize
	# 	puts "OK, here is the starting board:"
	# 	display_board

	# 	@spaces = Array.new(100)
	# 	@spaces.map{ "empty space"}
	# 	puts @spaces.fetch(3)
	# 	puts @spaces.fetch(3)
	# end


def attack(row_num, col_num)
	@spaces[[row_num,col_num]].attack
end


def display_board(enemy)
	print "    A", "   B", "   C", "   D", "   E", "   F", "   G", "   H", "   I", "   J"


	(0..9).each do |row_num|
		print "\n"
		if row_num < 9
			a = row_num + 1
			print a.to_s + " "
		else
			print row_num + 1
		end

		(0..9).each do |col_num|
			print @spaces[[row_num, col_num]].status(enemy)
		end

	end
	print "\n"
	# print "\n"
	# i = 1
	# while i < 11

	# 	#rows

	# 	if i < 10
	# 		print i.to_s + " "
	# 	else
	# 		print i.to_s
	# 	end

	# 	j = 0
	# 	while j < 10
	# 		# if empty
	# 		print " [ ]"
	# 		# if occupied
	# 		# print " [B]"
	# 		# if attacked
	# 		# print " [X]"
	# 		# if hit occupied space
	# 		# print " [H]"
	# 		j+=1
	# 	end
	# 	print "\n"

	# 	i+=1
	# end
end


def create_board
	
	# set 100 spaces in the hash by coordinates

end



# 	create_board = Array.new(10){Array.new(10, @empty_space)}
# 	create_board.insert(0, "1 ")
# 	create_board.insert(2, "2 ")
# 	create_board.insert(4, "3 ")
# 	create_board.insert(6, "4 ")
# 	create_board.insert(8, "5 ")
# 	create_board.insert(10, "6 ")
# 	create_board.insert(12, "7 ")
# 	create_board.insert(14, "8 ")
# 	create_board.insert(16, "9 ")
# 	create_board.insert(18, "10")

# 	puts @first_row.join
# 	puts @create_board[0..1].join
# 	puts @create_board[2..3].join
# 	puts @create_board[4..5].join
# 	puts @create_board[6..7].join
# 	puts @create_board[8..9].join
# 	puts @create_board[10..11].join
# 	puts @create_board[12..13].join
# 	puts @create_board[14..15].join
# 	puts @create_board[16..17].join
# 	puts @create_board[18..19].join
# end

# # def create_board
# # 	empty_space = " [ ]"
# # 	attacked_space = " [X]"
# # 	occupied_space = " [B]"
# # 	attacked_occupied_space = " [H]"
# # 	first_row = ["    A", "   B", "   C", "   D", "   E", "   F", "   G", "   H", "   I", "   J"]

# # 	create_board = Array.new(10){Array.new(10, empty_space)}
# # 	create_board.insert(0, "1 ")
# # 	create_board.insert(2, "2 ")
# # 	create_board.insert(4, "3 ")
# # 	create_board.insert(6, "4 ")
# # 	create_board.insert(8, "5 ")
# # 	create_board.insert(10, "6 ")
# # 	create_board.insert(12, "7 ")
# # 	create_board.insert(14, "8 ")
# # 	create_board.insert(16, "9 ")
# # 	create_board.insert(18, "10")

# # 	puts first_row.join
# # 	puts create_board[0..1].join
# # 	puts create_board[2..3].join
# # 	puts create_board[4..5].join
# # 	puts create_board[6..7].join
# # 	puts create_board[8..9].join
# # 	puts create_board[10..11].join
# # 	puts create_board[12..13].join
# # 	puts create_board[14..15].join
# # 	puts create_board[16..17].join
# # 	puts create_board[18..19].join
# # end

# # def attack_a_space(space)
# # 		column = space[0]
# # 		row = space[1..2]
# # 		create_board[row].slice!(column)
# # 		create_board[row].insert(column, attacked_space)
# # 		# puts create_board[3]
# # end

# # entire_board.each do |cell|
# # 	puts cell.join("-")
# # end

# # attacking space

# # create_board[3].slice!(2)
# # create_board[3].insert(2, attacked_space)
# # puts create_board[3]


# 		# first_row[0] = 1
# 		# second = Array.new(10, empty_space)
# 		# second[0] = 2
# 		# third = Array.new(10, empty_space)
# 		# third[0] = 3

# 		# i = 1
# 		# while i < 11
# 		# 	if i == 10
# 		# 		entire_board[i]
# 		# 	else entire_board[i.to_s + " "]
# 		# 	end	
# 		# 	i += 1
# 		# end

# 		# puts "  A   B   C   D   E   F   G   H   I   J"

# 		# i = 1
# 		# entire_board.each do |row|
# 		# 	puts row.join
# 		# 		# # while i < 11
# 		# 		# # 	if i == 10
# 		# 		# # 	i.to_s
# 		# 		# # 	# else entire_board[i.to]
# 		# 		# # 	end	
# 		# 		# # i += 1
# 		# 		# # end
# 		# 		# )
# 		# end
		
# 		# row_2 = Array.new
# 		# row_3 = Array.new
# 		# row_4 = Array.new
# 		# row_5 = Array.new
# 		# row_6 = Array.new
# 		# row_7 = Array.new
# 		# row_8 = Array.new
# 		# row_9 = Array.new
# 		# row_10 = Array.new
# 		# we need to create an array of all the spaces
# 		# and for each move, parse the coordinate inputs.
# 		# The inputs will be (B, 10) and we need to update
# 		# the second item in the 10th array. Then print the board
# 		# state, which will be printing all 10 arrays.
# 		# Or we do 1 giant array, with 110 items, and each 11th item
# 		# is a new line, so when the contents are printed it works out.

	
# 	def print_empty_board
# 		puts "    A   B   C   D   E   F   G   H   I   J"
# 		i = 1
# 		while i < 11
# 			if i == 10
# 				puts i.to_s + empty_space * 10
# 			else puts i.to_s + " " + empty_space * 10
# 			end	
# 			i += 1
# 		end
# 	end

# 	def valid_coordinate_check

# 	end

end