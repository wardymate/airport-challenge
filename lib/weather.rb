module Weather

	attr_accessor :sunny

	def sunny?
		@sunny
	end

	def sunny!
		@sunny = true
	end

	def stormy!
		@sunny = false
	end

	def random_weather
		r = rand(1..100)
		if r > 95
			stormy!
		else
			sunny!
		end
	end

end