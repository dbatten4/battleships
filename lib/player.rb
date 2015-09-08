require_relative 'ship'
require_relative 'board'

class Player

  attr_reader :hits, :misses

  def initialize(klass = Board.new)
    @board = klass
    @hits = []
    @misses = []
  end

  def place(ship, position)
    ship.position = position
    @board.ships << ship
  end

  def hits=(position)
    hits << position
  end

  def misses=(position)
    misses << position
  end

  def receive_hit(position)
    @board.receive_hit(position)
  end

  def lost?
    @board.ships.empty?
  end

end
