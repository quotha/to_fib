require 'test_helper'

class TestNegToFib < BaseTest
    
  def test_neg_4
    assert_equal -3, -4.to_fib
  end
  
  def test_neg_44
    assert_equal -55, -44.to_fib
  end
  
  def test_neg_4444
    assert_equal -2584, -4444.to_fib
  end
  
  def test_neg_10_000_000_000
    assert_equal -12_586_269_025, -10_000_000_000.to_fib
  end
  
end