require 'plane'

describe Plane do

	let(:plane) {Plane.new}

	it 'has a flying status when created' do
		expect(plane).to be_flying
	end

	it 'has a flying status when in the air' do
		expect(plane.fly!).to be_flying
	end

	it ' does not have a flying status when it lands' do
	expect(plane.land!).not_to be_flying
end
	



end