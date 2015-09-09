require 'ship'

describe Ship do


  it 'should not be initially sunk' do
    expect(subject.hit_counter).to eq(0)
  end

  it 'will record number of hits' do
    ship = Ship.new
    player = Player.new
    player.place(ship, 'A1', :N)
    player.receive_hit('A1')
    expect(ship.hit_counter).to eq(1)
  end

  it 'wont record hit if missed' do
    ship = Ship.new
    player = Player.new
    player.place(ship, 'A1', :N)
    player.receive_hit('A2')
    expect(ship.hit_counter).to eq(0)
  end

  it 'can be sunk' do
    ship = Ship.new
    player = Player.new
    player.place(ship, 'A1', :N)
    expect(player.receive_hit('A1')).to eq(:all_ships_sunk)
  end


end



