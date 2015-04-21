# Weather module
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

  def random_weather(number)
    number > 95 ? stormy! : sunny!
  end

  def random_number
    rand(1..100)
  end
end
