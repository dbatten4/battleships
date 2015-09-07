require 'board'

  # reports missed hit when no ship at position /
  # can have a ship /
  # can receive a hit on a ship /
  # can report if all ships are sunk /
  # can report if not all ships are sunk /

describe Board do 

  it { is_expected.to respond_to(:place).with(1).argument }

  it 'can receive a hit on a ship' do
    ship = Ship.new
    subject.place(ship)
    subject.receive_hit("A1")
    expect(ship.hit).to eq(true)
  end

  it 'reports missed hit when no ship at position' do
    ship = Ship.new
    subject.place(ship)
    expect(subject.receive_hit("A2")).to eq(:miss)
  end

  it 'can report if all ships are sunk' do
    ship = Ship.new
    subject.place(ship)
    subject.receive_hit("A1")
    expect(subject.all_sunk?).to eq(true)
  end

  it 'can report if not all ships are sunk' do
    ship = Ship.new
    subject.place(ship)
    expect(subject.all_sunk?).to eq(false)
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
