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
    assert_equal(radicand(0, 0, 0, 0), 0)
    assert_equal(radicand(52, 53, -6, -7), 0.6713126923872077)
    assert_equal(radicand(27.43, 59.82, -0.8, 23.77), 0.3343970237339099)
  end

  def test_distance
    assert_equal(distance(0,0,0,0,0), 0)
    assert_equal(distance(0,0,0,0,6371), 0)
    assert_equal(distance(54, 55, -6, -7, 0), 0)
    assert_equal(distance(57,58, 10, 11, 6371), 19281.952932457218)
  end

  def test_load_JSON
    data = load_JSON('customers.txt')
    assert data
    assert_equal(data.class, Array)
  end

  def test_close_customers
    close_customers('customers.txt',-6.257664, 53.339428,6371)
    test = File.open('test/output.txt')
    output = File.open('output.txt')
    testlines = test.readlines
    outputlines = output.readlines

    assert test
    assert output
    assert testlines
    assert outputlines
    assert_equal(testlines, outputlines)
  end
end