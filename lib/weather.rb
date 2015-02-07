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

end