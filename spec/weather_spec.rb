require 'weather'

class WeatherAirport; include Weather; end

describe Weather do 
	
	let(:weather) {WeatherAirport.new}

	it 'should know if it is sunny' do
		expect(weather).to be_sunny
	end

	
end