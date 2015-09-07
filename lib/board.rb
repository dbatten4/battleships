require_relative 'ship'

class Board

  def initialize
    @ships = []
  end

  def place(ship)
    @ships << ship 
  end

  def receive_hit(hit_position)
    @ships.each do |ship|
      if ship.position == hit_position
         ship.hit = true
         return :hit
       else
        return :miss
      end
    end
  end


end


























# def initialize(size=5)
#     @board = []
#     size.times { @board << false }
#   end

#   def place_on_board(ship, location)
#     limit = location + (ship.ship_size-1)
#     for i in location..limit
#       @board[i] = true
#     end
#   end

#   def has_a_ship?(location)
#     @board[location]
#   end

#   def board_size
#     @board.count
#   end