require 'minitest/autorun'
require 'minitest/pride'
require './lib/user_battlefield'

class UserBattlefieldTest < Minitest::Test

  def test_if_user_battlefield_class_exist
    assert_instance_of UserBattlefield, UserBattlefield.new
  end

end