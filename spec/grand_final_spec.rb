require 'plane'
require 'airport'

describe "The grand finale 'last spec'" do
  planes = [:spitfire, :hurricane, :lancaster, :mosquito, :typhoon, :swordfish]
  planes.each { |plane| let(plane) { Plane.new } }
  let(:gatwick) { Airport.new }

  def land_six_planes
    gatwick.sunny!
    planes = [spitfire, hurricane, lancaster, mosquito, typhoon, swordfish]
    planes.each { |plane| gatwick.land_plane(plane) }
  end

  def take_off_six_planes
    gatwick.sunny!
    planes = [spitfire, hurricane, lancaster, mosquito, typhoon, swordfish]
    planes.each { |plane| gatwick.release_plane(plane) }
  end

  it 'all planes can land' do
    land_six_planes
    expect(gatwick).to be_full
  end

  it 'all planes change their status to landed' do
    land_six_planes
    expect(spitfire).to_not be_flying
    expect(swordfish).to_not be_flying
  end

  it 'all planes can take off again' do
    take_off_six_planes
    expect(gatwick).to_not be_full
  end

  it 'all planes change their status to flying' do
    take_off_six_planes
    expect(spitfire).to be_flying
    expect(swordfish).to be_flying
  end
end
