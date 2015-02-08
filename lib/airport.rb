require_relative 'weather'

class Airport
	
	include Weather

	attr_reader :capacity
	attr_accessor :planes

	def initialize
		@capacity = 6
		@planes = []
	end

	def plane_can_land?
		if sunny? && plane_count < capacity
			true
		else
			false
		end
	end

	def land_plane(plane)
		if plane_can_land?
			plane.land!
			@planes << plane
		end
	end

	def plane_count
		@planes.count
	end
	
	def plane_can_take_off?
		sunny? ? true : false
	end

	def release_plane(plane)
		if plane_can_take_off?
			@planes.delete(plane)
		end
	end

	def full?
		plane_count == capacity
	end


end