require_relative 'plane'
class Airport 

  attr_reader :hanger

  def initialize 
    @hanger = []
  end 

  def land(plane = Plane.new)
    @hanger.push(plane)
  end

end