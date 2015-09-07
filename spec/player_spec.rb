require 'player'

  # can lose
  # can place ships /
  # can tell us when a ship is hit
  # can report hit positions
  # can report miss positions
  # will lose if all ships are hit

describe Player do 

  it { is_expected.to respond_to(:place).with(2).arguments }

end