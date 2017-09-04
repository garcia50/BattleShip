class BattleField

  def initialize 
    @field = {"A1" => [false, ""], "A2" => [false, ""], "A3" => [false, ""], "A4" => [false, ""],
              "B1" => [false, ""], "B2" => [false, ""], "B3" => [false, ""], "B4" => [false, ""],
              "C1" => [false, ""], "C2" => [false, ""], "C3" => [false, ""], "C4" => [false, ""],
              "D1" => [false, ""], "D2" => [false, ""], "D3" => [false, ""], "D4" => [false, ""]
              }
  end

  def positions
    positions = ["A1","A2","A3","A4",
                 "B1","B2","B3","B4",
                 "C1","C2","C3","C4",
                 "D1","D2","D3","D4"]
    
  end
end
