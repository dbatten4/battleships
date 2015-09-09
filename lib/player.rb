require_relative 'ship'
require_relative 'board'
require_relative 'submarine'

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
     ship.orientation = orientation
     if ship.size_of_ship == 1
       ship.ship_positions = position
     elsif ship.size_of_ship >= 2
       ship.ship_positions << positions_taken(ship, position, orientation)
     end
  end

  def receive_hit(hit_position)
    @ships.each do |ship|
      if ship.ship_positions == hit_position
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

  def positions_taken(ship, start_pos, orientation)
    positions_taken_array = [start_pos]
    ship_size = ship.size_of_ship
    start_pos_split = start_pos.chars
    case orientation
    when :N, :S
      if orientation == :N
        y = start_pos_split.pop.to_i
        y -= 1
        positions_taken_array << start_pos_split.push(y.to_s).join
      end
    end
    positions_taken_array
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


