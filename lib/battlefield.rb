require 'pry'
class BattleField
  attr_accessor :field

  def initialize 
    @field = {"A1" => [false, ""], "A2" => [false, ""], "A3" => [false, ""], "A4" => [false, ""],
              "B1" => [false, ""], "B2" => [false, ""], "B3" => [false, ""], "B4" => [false, ""],
              "C1" => [false, ""], "C2" => [false, ""], "C3" => [false, ""], "C4" => [false, ""],
              "D1" => [false, ""], "D2" => [false, ""], "D3" => [false, ""], "D4" => [false, ""]
              }
  end


  def game_board
  "    ===========
    .  1 2 3 4
    A  #{field["A1"][1]} #{field["A2"][1]} #{field["A3"][1]} #{field["A4"][1]}
    B  #{field["B1"][1]} #{field["B2"][1]} #{field["B3"][1]} #{field["B4"][1]}
    C  #{field["C1"][1]} #{field["C2"][1]} #{field["C3"][1]} #{field["C4"][1]}
    D  #{field["D1"][1]} #{field["D2"][1]} #{field["D3"][1]} #{field["D4"][1]}
    ==========="
  end
end

# field = BattleField.new
# puts field.game_board



# Ships cannot wrap around the board
# Ships cannot overlap
# Ships can be laid either horizontally or vertically
# Coordinates must correspond to the first and last units of the ship. 
# (IE: You can’t place a two unit ship at “A1 A3”)