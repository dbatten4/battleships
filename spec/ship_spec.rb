require 'ship'

describe Ship do 

  it 'should have a default size' do
    expect(subject.ship_size).to eq(1)
  end

end