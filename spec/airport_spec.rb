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

  it 'has a default capacity of 3' do
    expect(subject.capacity).to eq (Airport::DEFAULT_CAPACITY)
  end

  context 'lands multiple planes' do 

    plane1 = Plane.new
    plane2 = Plane.new
    plane3 = Plane.new
    plane4 = Plane.new
    subject = Airport.new
    subject.land(plane1)
    subject.land(plane2)
    subject.land(plane3)
    subject.land(plane4)
  

  it 'prevents landing when airport is full' do
    expect(subject.hanger.length).to eq(Airport::DEFAULT_CAPACITY)
  end

  it 'prevents a landing when airport is at customised capacity' do 
     subject.override_capacity(4)
     plane4 = Plane.new
     subject.land(plane4)
    expect(subject.hanger.length).to eq (4)
  end
  
  it 'can change capacity at anytime' do
    subject.override_capacity(5)
    expect(subject.capacity).to eq (5)
  end 

end
    
end
