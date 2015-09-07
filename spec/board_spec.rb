require 'board'

describe Board do 

  it { is_expected.to respond_to(:place_on_board).with(2).argument }
  it { is_expected.to respond_to(:has_a_ship?).with(1).argument }
  it { is_expected.to respond_to(:board_size) }

  it 'should have a default size' do
    expect(subject.board_size).to eq(5)
  end


end