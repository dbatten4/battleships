require 'player'

  # can lose
  # can place ships /
  # can tell us when a ship is hit /
  # can report hit positions /
  # can report miss positions /
  # will lose if all ships are hit

describe Player do

  # let(:board) {  }

  it { is_expected.to respond_to(:place).with(2).arguments }

  it 'can place ship in chosen position' do
    board = Board.new
    ship = Ship.new
    player = Player.new
    player.place(ship, "A2")
    expect(ship.position).to eq("A2")
  end

  it 'can report hit positions' do
    board = Board.new
    ship = Ship.new
    player = Player.new
    player.hits = ("A1")
    expect(player.hits).to eq(["A1"])
  end

  it 'can report missed positions' do
    board = Board.new
    ship = Ship.new
    player = Player.new
    player.misses = ("A2")
    expect(player.misses).to eq(["A2"])
  end

  it 'can be told when a ship is hit' do
    board = Board.new
    ship = Ship.new
    player = Player.new
    player.place(ship, "A1")
    expect(player.receive_hit("A1")).to eq(:sunk)
  end

  it 'tells player they have lost if all ships are hit' do
    board = Board.new
    ship = Ship.new
    player = Player.new
    player.receive_hit("A1")
    expect(player.lost?).to eq(true)
  end

end
