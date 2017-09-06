require 'minitest/autorun'
require 'minitest/pride'
require './test/dummy'

class ValidatonsTest < Minitest::Test

  def test_if_validatoins_dummy_class_exist
    assert_instance_of Dummy, Dummy.new
  end

end