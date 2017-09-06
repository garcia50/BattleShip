require 'pry'
require './lib/ships'
require './lib/validations'

class CompBattlefield
  include Validations 

  def initialize
    @ships = Ships.new
  end

  def comp_coordinates_destroyer 
    @ships.destroyer = validate_destroyer_positions.sample
  end

  def comp_coordinate_cruiser
    cruiser_position = validate_cruiser_positions.sample 
    add_middle_coordinate_cruiser(cruiser_position)      
  end

  def add_middle_coordinate_cruiser(cruiser_position)
    if vertical_cruiser.include?(cruiser_position) 
      full_coordinate = cruiser_position.insert(1,cruiser_position[0][0].next + cruiser_position[0][1])
      checks_overlap(full_coordinate.flatten)
    else
      full_coordinate = cruiser_position.insert(1,cruiser_position[0][0] + cruiser_position[0][1].next)
      checks_overlap(full_coordinate.flatten)
    end  
  end

  def checks_overlap(full_coordinate)
    if @ships.destroyer.any? { |position| full_coordinate.include?(position)}
      comp_coordinate_cruiser
    else
      @ships.cruiser = full_coordinate
    end
  end
end

# comp = CompBattlefield.new
# comp.comp_coordinates_destroyer