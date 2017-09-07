require 'minitest/autorun'
require 'minitest/pride'
require './lib/battleship'

class BattleShipTest < Minitest::Test

  def test_if_battleship_class_exist
    assert_instance_of BattleShip, BattleShip.new
  end

  def test_present_method_puts_output
    bs = BattleShip.new
    output = "This is the output"
    bs.present(output)

    assert_equal = "This is the ouput", bs.present(output)
  end

end