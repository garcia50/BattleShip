require 'pry'


module Validations

  def keys
    letters = ("A".."D").to_a
    number = ("1".."4").to_a
    letters.map {|letter| number.map {|num| letter + num}}.flatten
  end

  def overlap
    
  end

  def horizontal_destroyer
    keys.map do |key|
      [] << key << key[0] + key[1].next unless key[1] == "4"
    end
  end

  def vertical_destroyer
    keys.map do |key|
      [] << key << key[0].next + key[1] unless key[0] == "D"
    end
  end

  def validate_destroyer_positions
    vertical_destroyer.compact.concat(horizontal_destroyer.compact)
  end

  def vertical_cruiser
    keys.map do |key|
      [] << key << key[0].next.next + key[1] unless key[0] == "C" || key[0] == "D"
    end
  end

  def horizontal_cruiser
    keys.map do |key|
      [] << key << key[0] + key[1].next.next unless key[1] == "3" || key[1] == "4"
    end
  end

  def validate_cruiser_positions
    horizontal_cruiser.compact.concat(vertical_cruiser.compact)
  end

end

include Validations
puts validate_cruiser_positions