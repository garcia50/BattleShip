require 'minitest/autorun'
require 'minitest/pride'
require './lib/battlefield'

class BattlefieldTest < Minitest::Test

  def test_if_battlefield_class_exist
    assert_instance_of BattleField, BattleField.new
  end

  def test_if_key_in_field_exist
    field = BattleField.new
    
    assert field.field["A1"]
    refute field.field["Z1"]
  end




end