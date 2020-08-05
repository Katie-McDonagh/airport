require_relative 'plane'
class Airport 

  attr_reader :hanger

  def initialize 
    @hanger = []
  end 

  def land(plane = Plane.new)
    @hanger.push(plane)
  end

  def take_off(plane)
    @hanger.delete(plane)
  end

  def is_in_hanger?(plane)
    @hanger.include?(plane)
  end

end