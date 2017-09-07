require 'minitest/autorun'
require 'minitest/pride'
require './lib/ships'

class ShipsTest < Minitest::Test

  def test_if_ships_class_exist
    assert_instance_of Ships, Ships.new
  end

  def test_if_destroyer_saves_coordinates
    ships = Ships.new
    
    assert_equal ["A1", "A2"], ships.destroyer = ["A1", "A2"]
  end

  def test_if_cruiser_saves_coordinates
    ships = Ships.new
    
    assert_equal ["A1", "A3"], ships.cruiser = ["A1", "A3"]
  end
end