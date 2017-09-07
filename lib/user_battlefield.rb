require 'pry'
require './lib/ships'
require './lib/validations'
require './lib/battlefield'
require './lib/messages'

class UserBattlefield
  attr_accessor :ships, :battlefield
  include Validations
  include Messages

  def initialize
    @ships = Ships.new
    @battlefield = Battlefield.new 
  end

  def user_input
    gets.chomp.strip  
  end

  def present(output)
    puts output
  end

  def user_coordinates_destroyer(coordinate)
    if !coordinate.include?(' ')
      present(invalid_coordinate_assignment)
      user_coordinates_destroyer(user_input)
    elsif !validate_destroyer_positions.include?(coordinate.split(" ").sort)
      present(invalid_coordinate_assignment)
      user_coordinates_destroyer(user_input)
    else
      ships.destroyer = coordinate.split(" ").sort
      destroyer_board_positioning
    end
  end

   def destroyer_board_positioning
    ships.destroyer.each do |position|
      battlefield.field[position][0] = true
    end
  end

  def user_coordinates_cruiser(coordinate)
    if !coordinate.include?(' ')
      present(invalid_coordinate_assignment)
      user_coordinates_cruiser(user_input)
    elsif !validate_cruiser_positions.include?(coordinate.split(" ").sort)
      present(invalid_coordinate_assignment)
      user_coordinates_cruiser(user_input)
    else
      add_middle_cruiser_coordinates(coordinate.split(" ").sort)
    end
  end

  def add_middle_cruiser_coordinates(coordinates)
    if vertical_cruiser.include?(coordinates)
      full_coordinates = coordinates.insert(1,[coordinates[0][0].next + coordinates[0][1]])
      checks_overlap(full_coordinates.flatten)
    else
      full_coordinates = coordinates.insert(1,[coordinates[0][0] + coordinates[0][1].next])
      checks_overlap(full_coordinates.flatten)
    end
  end

  def checks_overlap(full_coordinates)
    if full_coordinates.any?{ |a| ships.destroyer.include?(a) }
      present(congested_waters)
      user_coordinates_cruiser(user_input)
    else
      ships.cruiser = full_coordinates
      cruiser_board_positioning
    end
  end

  def cruiser_board_positioning
    ships.cruiser.each do |position|
      battlefield.field[position][0] = true
    end
  end
end






