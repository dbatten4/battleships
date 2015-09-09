# require 'board'

# describe Board do 

#   it { is_expected.to respond_to(:place).with(1).argument }

#   it 'can receive a hit on a ship' do
#     ship = Ship.new
#     subject.place(ship)
#     subject.receive_hit("A1")
#     expect(ship.hit).to eq(true)
#   end

#   it 'reports missed hit when no ship at position' do
#     ship = Ship.new
#     subject.place(ship)
#     expect(subject.receive_hit("A2")).to eq(:miss)
#   end

#   it 'can report if all ships are sunk' do
#     ship = Ship.new
#     subject.place(ship)
#     subject.receive_hit("A1")
#     expect(subject.all_sunk?).to eq(true)
#   end

#   it 'can report if not all ships are sunk' do
#     ship = Ship.new
#     subject.place(ship)
#     expect(subject.all_sunk?).to eq(false)
#   end

#   xit 'does not allow a ships on the same space' do
#     ship1, ship2 = Ship.new
#     subject.place(ship1)
#     expect{ subject.place(ship2) }.to raise_error 'Ship placed on the same space'
#   end



# end








