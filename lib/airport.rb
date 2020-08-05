require_relative 'plane'
class Airport 

  DEFAULT_CAPACITY = 3

  attr_reader :hanger, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @hanger = []
  end 

  def land(plane = Plane.new)
    if @hanger.length < @capacity
      @hanger.push(plane)
    end
  end

  def take_off(plane)
    @hanger.delete(plane)
  end

  def is_in_hanger?(plane)
    @hanger.include?(plane)
  end

  def override_capacity(new_capacity)
    @capacity = new_capacity
  end
end