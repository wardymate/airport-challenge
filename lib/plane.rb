class Plane
	
	attr_accessor :flying

	def initialize
		in_the_air
	end
		
	def flying?
		@flying
	end

	def in_the_air
		@flying = true
		self
	end

	def land!
		@flying = false
		self
	end

	def takeoff!
		in_the_air	
	end

end