class World
  attr_accessor :time, :live_cells
  def initialize
    @time = 0
    @live_cells = []
  end

  def tick
    @time += 1
  end
end
