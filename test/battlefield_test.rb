require 'minitest/autorun'
require 'minitest/pride'
require './lib/battlefield'

class BattlefieldTest < Minitest::Test

  def test_if_battlefield_class_exist
    assert_instance_of BattleField, BattleField.new
  end

  # def test_
    
  # end




end