require 'player'

describe Player do

  # let(:board) {  }

  it { is_expected.to respond_to(:place) } 

  it 'can place ship in chosen position' do
    ship = Ship.new
    player = Player.new
    player.place(ship, "A1", :N)
    expect(ship.position).to eq("A1")
  end

  it 'can report hit positions' do
    ship = Ship.new
    player = Player.new
    player.hits = ("A1")
    expect(player.hits).to eq(["A1"])
  end

  it 'can report missed positions' do
    ship = Ship.new
    player = Player.new
    player.misses = ("A2")
    expect(player.misses).to eq(["A2"])
  end

  it 'can be told when a ship is hit' do
    ship = Ship.new
    player = Player.new
    player.place(ship, "A1", :N)
    expect(player.receive_hit("A1")).to eq(:all_ships_sunk)
  end

  it 'tells player they have lost if all ships are hit' do
    ship = Ship.new
    player = Player.new
    player.receive_hit("A1")
    expect(player.lost?).to eq(true)
  end

  it 'can report if all ships are sunk' do
    ship = Ship.new
    player = Player.new
    player.place(ship, "A1", :N)
    expect(player.receive_hit("A1")).to eq(:all_ships_sunk)
  end

end
