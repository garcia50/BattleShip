require 'minitest/autorun'
require 'minitest/pride'
require './test/dummy'

class MessagesTest < Minitest::Test

  def test_if_messages_dummy_class_exist
    assert_instance_of Dummy, Dummy.new
  end

  def test_welcome_message
    dummy = Dummy.new

    assert dummy.welcome
  end

  def test_introduction_message
    dummy = Dummy.new

    assert dummy.introduction
  end

  def test_play_instructions_message
    dummy = Dummy.new

    assert dummy.play_instructions
  end

  def test_instructions_message
    dummy = Dummy.new

    assert dummy.instructions
  end

  def test_quit_message
    dummy = Dummy.new

    assert dummy.quit
  end

  def test_invalid_response_message
    dummy = Dummy.new

    assert dummy.invalid_response
  end

  def test_congested_waters_message
    dummy = Dummy.new

    assert dummy.congested_waters
  end

  def test_two_unit_ship_coordinates_message
    dummy = Dummy.new

    assert dummy.two_unit_ship_coordinates
  end

  def test_three_unit_ship_coordinates_message
    dummy = Dummy.new

    assert dummy.three_unit_ship_coordinates
  end

  def test_shoot_message
    dummy = Dummy.new

    assert dummy.shoot
  end

  def test_hit_message
    dummy = Dummy.new

    assert dummy.hit
  end

  def test_miss_message
    dummy = Dummy.new

    assert dummy.miss
  end

  def test_stay_on_the_grid_message
    dummy = Dummy.new

    assert dummy.stay_on_the_grid
  end

  def test_no_repeat_message
    dummy = Dummy.new

    assert dummy.no_repeat
  end

  def test_user_won_message
    dummy = Dummy.new

    assert dummy.user_won(5, 55)
  end

  def test_user_lost_message
    dummy = Dummy.new

    assert dummy.user_lost(5, 55)
  end
end