class Space
	attr_reader :attacked
	attr_accessor :boat

	def initialize
		@attacked = false
	end

	def attack
		if @attacked
			puts "Hey you attacked here already!"
			return
		end
		@attacked = true
		boat.life -= 1 if boat
	end

	def status(enemy)
		if @attacked && boat
			" [H]"
		elsif @attacked
			" [X]"
		elsif !enemy && boat
			" [B]"
		else
			" [ ]"
		end
	end
end