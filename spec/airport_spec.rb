require 'airport'

describe Airport do 
	let(:airport) {Airport.new}
	let(:plane)	{double :plane}

	context 'taking off and landing' do

		it 'a plane can land' do
		expect(airport.land_plane(plane)).to eq true
		end
	end



	
end