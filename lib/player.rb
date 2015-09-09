require_relative 'ship'
require_relative 'board'

class Player

  attr_reader :hits, :misses, :positions

  def initialize
    @ships = []
    @hits = []
    @misses = []
    @positions = []
  end

  def place(ship, position, orientation)
    fail 'Ship placed on the same space' if already_taken?(position)
    @ships << ship
    @positions << position
    ship.position = position
    ship.orientation = orientation
  end

  def receive_hit(hit_position)
    @ships.each do |ship|
      if ship.position == hit_position
         ship.get_hit
         @positions.delete(hit_position)
          if ship.hit_counter < ship.size_of_ship
            return :hit
          else
            @ships.delete(ship)
            return :all_ships_sunk if @ships.empty?
            return :sunk
          end
       else
          :miss
      end
    end
  end


  def hits=(position)
    hits << position
  end

  def misses=(position)
    misses << position
  end

  def lost?
    @ships.empty?
  end

  private

 def already_taken?(position)
   fail 'Ship placed on the same space' if @positions.include?(position)
 end

end


# def all_sunk?
#    @ships.each do |ship|
#      return false if ship.hit == false
#    end
#    true
#  end

# 


