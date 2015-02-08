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
		r > 95 ? stormy! : sunny!
	end

end