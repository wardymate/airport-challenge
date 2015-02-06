class Plane
	
	attr_accessor :flying

	def initialize
		fly!
	end
		
	def flying?
		@flying
	end

	def fly!
		@flying = true
		self
	end

	def land!
		@flying = false
		self
	end

end