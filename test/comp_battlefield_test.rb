require 'minitest/autorun'
require 'minitest/pride'
require './lib/comp_battlefield'

class CompBattlefieldTest < Minitest::Test

  def test_if_compbattlefield_class_exist
    assert_instance_of CompBattlefield, CompBattlefield.new
  end

end