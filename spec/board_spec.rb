require 'board'

describe Board do 

  it { is_expected.to respond_to(:place).with(1).argument }

  it 'can receive a hit on a ship' do
    ship = Ship.new
    subject.place(ship)
    subject.receive_hit("A1")
    expect(ship.hit).to eq(true)
  end

end






























# it { is_expected.to respond_to(:place_on_board).with(2).argument }
#   it { is_expected.to respond_to(:has_a_ship?).with(1).argument }
#   it { is_expected.to respond_to(:board_size) }

#   it 'should have a default size' do
#     expect(subject.board_size).to eq(5)
#   end

#   it 'should not place a ship outside the board' do 
    
#   end
