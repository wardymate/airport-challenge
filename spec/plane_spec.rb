require 'plane'

describe Plane do

	let(:plane) {Plane.new}

	it 'has a flying status when created' do
		expect(plane).to be_flying
	end

	it 'has a flying status when in the air' do
		expect(plane.in_the_air).to be_flying
	end

	it 'does not have a flying status when it lands' do
		expect(plane.land!).not_to be_flying
	end

	it 'can take off' do
		plane.land!
		plane.takeoff!
		expect(plane).to be_flying
	end

	it 'changes its status to flying after taking off' do
		expect(plane.takeoff!.flying?).not_to eq(plane.land!.flying?)
	end

end