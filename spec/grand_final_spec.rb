require 'plane'
require 'airport'

describe "The grand finale (last spec)" do

	let(:spitfire)	{Plane.new}
	let(:hurricane)	{Plane.new}
	let(:lancaster)	{Plane.new}
	let(:mosquito)	{Plane.new}
	let(:typhoon)	{Plane.new}
	let(:swordfish)	{Plane.new}
	let(:gatwick) {Airport.new}

	def land_six_planes
	gatwick.sunny!
  	gatwick.land_plane(spitfire)
  	gatwick.land_plane(hurricane)
  	gatwick.land_plane(lancaster)
  	gatwick.land_plane(mosquito)
  	gatwick.land_plane(typhoon)
  	gatwick.land_plane(swordfish)
	end

  
  it 'all planes can land' do
  	land_six_planes
  	expect(gatwick).to be_full
  end

	it 'all planes change there status to landed' do
		land_six_planes
		expect(spitfire).to_not be_flying
		expect(swordfish).to_not be_flying

	end

	it 'all planes can take off again' do
	end

	it 'all planes change there status to flying' do
	end

end