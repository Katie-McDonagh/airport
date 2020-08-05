require 'airport'

describe Airport do

  it 'responds to land method with one argument' do
   expect(subject).to respond_to(:land).with(1).argument
  end

  it 'lands a plane object at the airport' do 
    plane = Plane.new
    expect(subject.land(plane)).to be_an_instance_of(Plane)
  end
end