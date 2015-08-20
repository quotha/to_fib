require 'minitest/autorun'
require 'minitest/reporters'
require 'to_fib'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new # spec-like progress

class BaseTest < Minitest::Test
  def setup
  end
end