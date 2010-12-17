require 'test_helper'
require 'percentise'

class PercentiseTest < Test::Unit::TestCase
  
  test "if top is nil returns nil" do
    assert_equal nil, Percentise.this(nil, 20)
  end
  
  test "if bottom is nil returns nil" do
    assert_equal nil, Percentise.this(20, nil)
  end
  
  test "if bottom is zero, and top is > 0, it is 100%" do
    assert_equal 100.0, Percentise.this(20, 0)
  end
  
  test "if bottom and top are both zero it is 0%" do
    assert_equal 0.0, Percentise.this(0, 0)
  end
  
  test "if bottom is zero, and top is < 0, it is -100%" do
    assert_equal -100.0, Percentise.this(-20, 0)
  end
  
  test "Percentise.this" do
    assert_equal 50.0, Percentise.this(1, 2)
    assert_in_delta 33.3333, Percentise.this(7, 21), 1E-4
  end
  
  test "Percentise()" do
    assert_equal 50.0, Percentise(1, 2)
    assert_in_delta 33.3333, Percentise(7, 21), 1E-4
  end
  
  test "diff" do
    assert_equal -50.0, Percentise.diff(50, 100)
  end
  
end
