require 'test_helper'

class CellTest < MiniTest::Unit::TestCase

  # def setup
  #   @cell = Cell.new
  # end

  def test_create_cell
    @cell = Cell.new(0, 1)

    assert_equal 0, @cell.x
    assert_equal 1, @cell.y
  end

  def test_find_neighbors
    @cell = Cell.new(2, 2)
    assert_equal 8, @cell.neighbors.length
  end

end