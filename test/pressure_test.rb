# encoding: utf-8

require File.expand_path( 'test_helper', File.dirname( __FILE__ ) )

class TestM9tDistance < Test::Unit::TestCase

  def setup
    I18n.locale = :en
    M9t::Pressure.reset_options!
  end

  # Basic use
  def test_bar
    assert_equal(1.0, M9t::Pressure.new(1.0).value)
  end

  def test_hectopascals
    assert_equal(0.001, M9t::Pressure.hectopascals(1.0).value)
  end

  def test_inches_of_mercury
    assert_in_delta(0.03386, M9t::Pressure.inches_of_mercury(1.0).value, 0.00001)
  end

end
