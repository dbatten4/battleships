class Ship

  attr_reader :position
  attr_accessor :hit

  def initialize(initial_position="A1")
    @position = initial_position
    @hit = false
  end

end



























# attr_reader :ship_size

#   def initialize(size=1)
#     @ship_size = size
#   end
