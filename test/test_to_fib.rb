require 'test_helper'

class TestToFib < BaseTest

  def test_version
    refute_equal nil, ToFib::Version
  end

  def test_13
    assert_equal 13, 13.to_fib
  end
  
  def test_20
    assert_equal 21, 21.to_fib
  end
  
  def test_40
    assert_equal 34, 40.to_fib
  end
  
  def test_900000000000000000000000000000000000000000000000000000000000000000000
    assert_equal 1082459262056433063877940200966638133809015267665311237542082678938909, 900000000000000000000000000000000000000000000000000000000000000000000.to_fib
  end
  
end