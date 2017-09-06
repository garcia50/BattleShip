require 'minitest/autorun'
require 'minitest/pride'
require './lib/comp_battlefield'
require './lib/validations'

class CompBattlefieldTest < Minitest::Test
  include Validations
  def test_if_compbattlefield_class_exist
    assert_instance_of CompBattlefield, CompBattlefield.new
  end

  def test_if_comp_coordinates_destroyer_includes_and_saves_coordinates
    cbf = CompBattlefield.new
  
    assert validate_destroyer_positions.include?(cbf.comp_coordinates_destroyer)
  end

  def test_if_destroyer_board_positioning_saves_coordinates
    cbf = CompBattlefield.new
    cbf.ships.destroyer = ["A1", "A2"]

    assert_equal ["A1", "A2"], cbf.ships.destroyer
  end

  def test_if_comp_coordinate_cruiser_requires_a_sample
    cbf = CompBattlefield.new
    cbf.ships.destroyer = ["A1", "A2"]

    assert cbf.comp_coordinates_cruiser == cbf.ships.cruiser
  end

  def test_if_method_adds_middle_coordinate_cruiser
    cbf = CompBattlefield.new
    cbf.ships.destroyer = ["B1", "B2"]

    assert_equal ["A1", "A2", "A3"], cbf.add_middle_coordinate_cruiser(["A1", "A3"])
  end

  def test_if_checks_everlap_method_functions
    cbf = CompBattlefield.new
    cbf.ships.destroyer = ["B1", "B2"]

    assert_equal ["A1", "A2", "A3"], cbf.checks_overlap(["A1", "A2", "A3"])
  end

  def test_if_cruiser_board_positioning_saves_coordinates
    cbf = CompBattlefield.new 
    cbf.ships.cruiser = ["A1", "A2", "A3"]
    cbf.cruiser_board_positioning

    assert cbf.battlefield.field["A1"][0]
    assert cbf.battlefield.field["A2"][0]
    assert cbf.battlefield.field["A3"][0]
  end
end








