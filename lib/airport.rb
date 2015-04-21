require_relative 'weather'
# Airport Class
class Airport
  include Weather

  attr_reader :capacity
  attr_accessor :planes

  def initialize
    @capacity = 6
    @planes = []
  end

  def plane_can_land?
    sunny? && plane_count < capacity ? true : false
  end

  def land_plane(plane)
    @planes << plane.land! if plane_can_land?
  end

  def plane_count
    @planes.count
  end

  def plane_can_take_off?
    sunny? ? true : false
  end

  def release_plane(plane)
    @planes.delete(plane) if plane_can_take_off?
  end

  def full?
    plane_count == capacity
  end
end
