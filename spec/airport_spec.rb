require 'airport'

describe Airport do
  let(:gatwick) { Airport.new }
  let(:plane) { double :plane, land!: false }

  context 'taking off and landing' do
    it 'a plane can land' do
      gatwick.sunny!
      expect(gatwick.plane_can_land?).to eq true
    end

    it 'accepts the plane that is landing' do
      gatwick.sunny!
      gatwick.land_plane(plane)
      expect(gatwick.plane_count).to eq(1)
    end

    it 'a plane can take off' do
      gatwick.sunny!
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

    it 'should be randomly stormy' do
      weather_array = []
      100.times  { weather_array << gatwick.random_weather(gatwick.random_number) }
      expect(weather_array).to include true, false
    end
  end

  context 'traffic control' do
    it 'should know its capacity' do
      expect(gatwick.capacity).to eq(6)
    end

    it 'should know if it is full' do
      expect(gatwick).not_to be_full
      gatwick.sunny!
      gatwick.capacity.times { gatwick.land_plane(plane) }
      expect(gatwick).to be_full
    end

    it 'a plane cannot land if the airport is full' do
      gatwick.capacity.times { gatwick.land_plane(plane) }
      expect(gatwick.plane_can_land?).to eq false
    end

    context 'weather conditions' do
      it 'a plane cannot take off when there is a storm brewing' do
        gatwick.random_weather(97)
        expect(gatwick.plane_can_take_off?).to eq false
      end

      it 'a plane cannot land in the middle of a storm' do
        gatwick.random_weather(97)
        expect(gatwick.plane_can_land?).to eq false
      end
    end
  end
end
