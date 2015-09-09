require 'submarine'

describe Submarine do 

  it 'should have size 2' do 
    expect(subject.size_of_ship).to eq(2)
  end

  context 'orientation' do 

    it 'knows all position when facing north' do 
      sub = Submarine.new
      player = Player.new
      player.place(sub, "A2", :N)
      expect(player.positions_taken(sub)).to eq(["A1", "A2"])
    end

  end


end