require 'plane'

describe Plane do

	let(:plane) {Plane.new}

	it 'has a flying status when created' do
		expect(plane).to be_flying
	end

	it 'has a flying status when in the air' do
		expect(plane.fly!).to be_flying
	end
	
end