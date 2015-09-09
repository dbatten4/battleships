class Ship

 attr_accessor :position, :hit, :orientation
 attr_reader :hit_counter, :size_of_ship

 def initialize
   @hit_counter = 0
   @size_of_ship = 1
   @orientation
 end

 def get_hit
   @hit_counter += 1
 end



end






