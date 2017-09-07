require 'minitest/autorun'
require 'minitest/pride'
require './lib/battlefield'

class BattlefieldTest < Minitest::Test

  def game_board
  "    ===========
    .  1 2 3 4
    A  #{field["A1"][1]} #{field["A2"][1]} #{field["A3"][1]} #{field["A4"][1]}
    B  #{field["B1"][1]} #{field["B2"][1]} #{field["B3"][1]} #{field["B4"][1]}
    C  #{field["C1"][1]} #{field["C2"][1]} #{field["C3"][1]} #{field["C4"][1]}
    D  #{field["D1"][1]} #{field["D2"][1]} #{field["D3"][1]} #{field["D4"][1]}
    ==========="
  end

  def field 
     {"A1" => [false, " "], "A2" => [false, " "], "A3" => [false, " "], "A4" => [false, " "],
      "B1" => [false, " "], "B2" => [false, " "], "B3" => [false, " "], "B4" => [false, " "],
      "C1" => [false, " "], "C2" => [false, " "], "C3" => [false, " "], "C4" => [false, " "],
      "D1" => [false, " "], "D2" => [false, " "], "D3" => [false, " "], "D4" => [false, " "]
      }
  end

  def test_if_battlefield_class_exist
    assert_instance_of Battlefield, Battlefield.new
  end

  def test_if_key_in_field_exist
    field = Battlefield.new
    
    assert field.field["A1"]
    refute field.field["Z1"]
  end

  def test_arguement_of_key
    field = Battlefield.new
    
    assert_equal [false, " "], field.field["A1"]
    assert_equal [false, " "], field.field["B1"]
    assert_equal [false, " "], field.field["C1"]
  end

  def test_if_game_board_funcctions
    field = Battlefield.new

    assert_equal game_board, field.game_board    
  end
end