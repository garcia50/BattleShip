require 'minitest/autorun'
require 'minitest/pride'
require './lib/battleship'

class BattleShipTest < Minitest::Test

  def test_if_battleship_class_exist
    assert_instance_of BattleShip, BattleShip.new
  end
end