require 'minitest/autorun'
require 'minitest/pride'
require './test/dummy'

class MessagesTest < Minitest::Test

  def test_if_messages_dummy_class_exist
    assert_instance_of Dummy, Dummy.new
  end

  def test
    
  end
end