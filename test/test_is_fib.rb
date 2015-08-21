require 'test_helper'

class TestIsFib < BaseTest
  
  def test_is_fib
    assert_equal true, 55.is_fib?
  end
  
  def test_not_is_fib
    assert_equal false, 58.is_fib?
  end
  
end