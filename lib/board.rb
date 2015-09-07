require_relative 'ship'

class Board

  def initialize(size=5)
    @board = []
    size.times { @board << false }
  end

  def place_on_board(ship, location)
    limit = location + (ship.ship_size-1)
    for i in location..limit
      @board[i] = true
    end
  end

  def has_a_ship?(location)
    @board[location]
  end

  

  def board_size
    @board.count
  end



end