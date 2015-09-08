require 'ship'

#   has a position when created /
#   can be hit 
#   will record number of hits
#   can be missed
#   will not be hit when it is missed
#   is not sunk initially /
#   can be sunk

describe Ship do 

  it 'should have a default position' do 
    expect(subject.position).to eq("A1")
  end

  it 'should not be initially sunk' do
    expect(subject.hit).to eq(false)
  end



end




























 # it 'should have a default size' do
 #    expect(subject.ship_size).to eq(1)
 #  end
