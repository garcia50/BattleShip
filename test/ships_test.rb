require 'minitest/autorun'
require 'minitest/pride'
require './lib/ships'

class ShipsTest < Minitest::Test

  def test_if_ships_class_exist
    assert_instance_of Ships, Ships.new
  end

end