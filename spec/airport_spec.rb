require 'airport'

describe Airport do 
	let(:gatwick) {Airport.new}
	let(:plane)	{double :plane}

	context 'taking off and landing' do
		
		it 'a plane can land' do
			expect(gatwick.plane_can_land?).to eq true
		end

		it 'accepts the plane that is landing' do
			gatwick.land_plane(plane)
			expect(gatwick.plane_count).to eq(1)
		end

		it 'a plane can take off' do
			expect(gatwick.plane_can_take_off?).to eq true
		end

		it 'release a plane when it takes off' do
			gatwick.land_plane(plane)
			gatwick.release_plane(plane)
			expect(gatwick.plane_count).to eq(0)
		end

	end

		context 'weather' do

			it 'should be able to be sunny' do
				gatwick.sunny!
				expect(gatwick).to be_sunny
			end

			it 'should be able to be stormy' do
				gatwick.stormy!
				expect(gatwick).not_to be_sunny
			end

		end

		context ' traffic control' do

			it 'should know its capacity' do
				expect(gatwick.capacity).to eq(20)
			end
		
			it 'should know if it is full' do
			 	expect(gatwick).not_to be_full
				gatwick.capacity.times{gatwick.land_plane(plane)}
				expect(gatwick).to be_full
			end

			it 'a plane cannot land if the airport is full' do
				gatwick.capacity.times{gatwick.land_plane(plane)}
				expect(gatwick.plane_can_land?).to eq false
			end

		end



	
end