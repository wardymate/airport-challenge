class Airport
	
	attr_reader :capacity
	attr_accessor :planes

	def initialize
		@capacity = 20
		@planes = []
	end

	def plane_can_land?
		true
	end

	def land_plane(plane)
		@planes << plane
	end

	def plane_count
		@planes.count
	end
	
	def plane_can_take_off?
		true
	end

	def release_plane(plane)
		@planes.delete(plane)
	end

	def full?
	end


end