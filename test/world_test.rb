require 'test_helper'

class WorldTest < MiniTest::Unit::TestCase

  def setup
    @world = World.new
  end

  def test_world_start
    assert_equal 0, @world.time
  end

  def test_time_passing
    assert_equal 0, @world.time
    @world.tick
    assert_equal 1, @world.time
  end

  def test_push_live_cell
    @cell = Cell.new(1, 2)
    @world.live_cells.push(@cell)
    assert_equal 1, @world.live_cells[0].x
  end

  def test_neighborly_cells
    @cell1 = Cell.new(0, 0)
    @cell2 = Cell.new(0, 1)
    @world.live_cells.push(@cell1)
    @world.live_cells.push(@cell2)
    assert_equal true, @cell1.neighbor?(@cell2)
    assert_equal true, @world.live_cells[0].neighbor?(@world.live_cells[1])
  end

  def test_not_so_negihborly_cells
    @cell1 = Cell.new(0, 0)
    @cell2 = Cell.new(0, 2)
    @world.live_cells.push(@cell1)
    @world.live_cells.push(@cell2)
    assert_equal false, @cell1.neighbor?(@cell2)
    assert_equal false, @world.live_cells[0].neighbor?(@world.live_cells[1])
  end

end
