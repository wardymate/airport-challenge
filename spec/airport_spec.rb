require 'airport'

describe Airport do 
	let(:airport) {Airport.new}
	let(:plane)	{double :plane}

	context 'taking off and landing' do
		
		it 'a plane can land' do
			expect(airport.plane_can_land?).to eq true
		end

		it 'accepts the plane that is landing' do
			airport.land_plane(plane)
			expect(airport.plane_count).to eq(1)
		end

		it 'a plane can take off' do
			expect(airport.plane_can_take_off?).to eq true
		end

		it 'release a plane when it takes off' do
			airport.land_plane(plane)
			airport.release_plane(plane)
			expect(airport.plane_count).to eq(0)
		end

	end

		context ' traffic control' do

			it 'should know its capacity' do
				expect(airport.capacity).to eq(20)
			end
		
			# it 'should know if it is full' do
			# 	expect(airport).not_to be_full
			# 	airport.capacity.times {airport.plane}
			# end

			# it 'a plane cannot land if the airport is full' do
			# 	airport.full?		
				
			# end

		end



	
end