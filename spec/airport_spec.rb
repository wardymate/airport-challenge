require 'airport'

describe Airport do 
	let(:airport) {Airport.new}
	let(:plane)	{double :plane}

	context 'taking off and landing' do
		it 'a plane can land' do
			expect(airport.plane_can_land(plane)).to eq true
		end

	 	it 'a plane can take off' do
			expect(airport.plane_can_take_off(plane)).to eq true
		end
	end



	
end