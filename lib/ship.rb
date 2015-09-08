class Ship

  attr_accessor :position, :hit
  attr_reader :hit_counter, :size

  def initialize(initial_position="A1")
    @position = initial_position
    @hit = false
    @hit_counter = 0
    @size = 1
  end

  def get_hit
    @hit_counter += 1
    "Sunk!" if hit_counter >= size
  end




end


























# attr_reader :ship_size

#   def initialize(size=1)
#     @ship_size = size
#   end
