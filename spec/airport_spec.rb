require 'airport'

describe Airport do

  it 'responds to land method with one argument' do
   expect(subject).to respond_to(:land).with(1).argument
  end

  it 'lands a plane and stores it in the hanger' do 
    plane = Plane.new
    subject.land(plane)
    expect(subject.hanger.length).to eq(1)
  end

  it 'a plane takes off from the airport' do
    plane = Plane.new
    subject.land(plane)
    subject.take_off(plane)
    expect(subject.hanger.length).to eq(0)
  end

  it 'confirms plane is no longer at the airport' do
    plane = Plane.new
    subject.land(plane)
    subject.take_off(plane)
    expect(subject.is_in_hanger?(plane)).to eq(false)
  end

  it 'prevents landing when airport is full' do
    plane1 = Plane.new
    plane2 = Plane.new
    plane3 = Plane.new
    plane4 = Plane.new
    subject.land(plane1)
    subject.land(plane2)
    subject.land(plane3)
    subject.land(plane4)
    expect(subject.hanger.length).to eq(3)
  end

end
