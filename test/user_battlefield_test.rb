require 'minitest/autorun'
require 'minitest/pride'
require './lib/user_battlefield'

class UserBattlefieldTest < Minitest::Test

  def test_if_user_battlefield_class_exist
    assert_instance_of UserBattlefield, UserBattlefield.new
  end

  def test_user_coordinate_destroyer_method
    user = UserBattlefield.new
    user_input = "C2 C3"

    assert_equal ["C2","C3"], user.user_coordinates_destroyer("C2 C3")    
  end

  def test_destroyer_board_positioning_method
    user = UserBattlefield.new
    
    assert = user.destroyer_board_positioning
  end  

  def test_user_coordinate_cruiser_method
    user = UserBattlefield.new
    user_input = "C1 C3"

    assert_equal ["C1","C2","C3"], user.user_coordinates_cruiser("C1 C3")    
  end

  def test_checks_overlap_method
    user = UserBattlefield.new
    user.ships.destroyer = ["B1", "B2"]
    
    assert ["B1", "B2"], user.destroyer_board_positioning
  end

  def test_cruiser_board_positioning_method
    user = UserBattlefield.new
    user_input = "C1 C3"

    assert ["C1","C3"], user.user_coordinates_cruiser("C1 C3")    
  end
end