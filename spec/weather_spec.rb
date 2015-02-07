# require 'weather'

# class WeatherAirport; include Weather; end

# describe Weather do 
	
# 	let(:gatwick) {WeatherAirport.new}

# 	it 'should start sunny' do
# 		expect(gatwick).to be_sunny

# 	end

# 	it 'should know if it is not sunny' do
# 		gatwick.stormy!
# 		expect(gatwick).to_not be_sunny
# 	end

# 		it 'should make itself again' do
# 			gatwick.stormy!
# 		expect(gatwick.sunny!).to be_sunny
# 	end
	
# end