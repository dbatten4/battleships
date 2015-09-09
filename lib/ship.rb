class Ship

 attr_accessor :ship_positions, :hit, :orientation
 attr_reader :hit_counter, :size_of_ship

 def initialize
   @hit_counter = 0
   @size_of_ship = 1
   @orientation
   @ship_positions = []
 end

 def get_hit
   @hit_counter += 1
 end



end






