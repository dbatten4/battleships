# require_relative 'ship'

# class Board

#  attr_accessor :ships

#  def initialize
#    @ships = []
#  end

#  def place(ship)
#     if ships.empty? 
#       @ships << ship
#     else
#       fail 'Ship placed on the same space' if already_taken?(ship)
#       @ships << ship
#     end 
#  end

 # def receive_hit(hit_position)
 #   @ships.each do |ship|
 #     if ship.position == hit_position
 #        ship.hit = true
 #        ship.get_hit
 #        if ship.hit_counter < ship.size
 #           return :hit
 #         else
 #           ships.delete(ship)
 #           return :sunk
 #         end
 #      else
 #         return :miss
 #     end
 #   end
 # end

#  def all_sunk?
#    @ships.each do |ship|
#      return false if ship.hit == false
#    end
#    true
#  end

#  # private

#  def already_taken?(ship)
#   ships.each do |placed|
#     return true if ship.position == placed.position
#   end
#   return false
#  end




# end



