require_relative 'gc_distance'
require "test/unit"

class GCDistanceTest < Test::Unit::TestCase
  def test_degrees_to_radians
    assert_equal(deg_to_rad(120), 2.0943951023931953)
    assert_equal(deg_to_rad(0), 0)
    assert_equal(deg_to_rad(-75), -1.3089969389957472)
  end

  def test_sin_squared
    assert_equal(haversine(0), 0)
    assert_equal(haversine(Math::PI), 1)
    assert_equal(haversine(Math::PI/2), 0.49999999999999994)
  end

  def test_radicand
    # assert_equal()
  end

  def test_distance

  end

  def test_load_JSON

  end
end