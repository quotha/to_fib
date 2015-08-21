require 'test_helper'

class TestVersion < BaseTest

  def test_to_fib_version
    refute_equal nil, ToFib::Version
  end

end