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

  it 'will record number of hits' do
    ship = Ship.new
    board = Board.new
    board.place(ship)
    board.receive_hit('A1')
    expect(ship.hit_counter).to eq(1)
  end

  it 'wont record hit if missed' do
    ship = Ship.new
    board = Board.new
    board.place(ship)
    board.receive_hit('A2')
    expect(ship.hit_counter).to eq(0)
  end

  it 'can be sunk' do
    ship = Ship.new
    board = Board.new
    board.place(ship)
    expect(board.receive_hit("A1")).to eq(:sunk)
  end


end




























 # it 'should have a default size' do
 #    expect(subject.ship_size).to eq(1)
 #  end
