# frozen_string_literal: true

require_relative 'ketvirtas'
require 'test/unit'

# Class to test Triangle class
class TriangleTest < Test::Unit::TestCase
  def test_area
    assert_equal(6, Triangle.new(3, 4, 5).area)
    assert_equal(12, Triangle.new(5, 5, 6).area)
  end

  def test_perimetre
    assert_equal(12, Triangle.new(3, 4, 5).perimetres)
    assert_equal(16, Triangle.new(5, 5, 6).perimetres)
  end

  def test_halfperimetre
    assert_equal(6, Triangle.new(3, 4, 5).halfperimetre)
    assert_equal(8, Triangle.new(5, 5, 6).halfperimetre)
  end
end
