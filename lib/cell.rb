class Cell

  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def neighbor?(cell)
    x = (@x - cell.x).abs
    x = x ** 2
    y = (@y - cell.y).abs
    y = y ** 2
    num = (x + y) ** 0.5
    num.floor == 1
  end

  def neighbors
    start_x = @x - 1
    end_x = @x + 1
    start_y = @y - 1
    end_y = @y + 1
    neighbor_coords = []
    while start_x <= end_x do |i|
      while start_y <= end_y do |j|
        unless i == x && j == y
          neighbor_coords << [i, j]
        end
        start_x += 1
        start_y += 1
      end
    end
    neighbor_coords
  end
end