module Messages 

  def welcome
    "\nWelcome to BATTLESHIP"
  end

  def introduction
    "\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def play_instructions
    "\nMan your battle stations!\n  
    I have laid out my ships on the grid. 
    You now need to layout your two ships.
    The first is two units long and the
    second is three units long.
    The grid has A1 at the top left and D4 at the bottom right.
    For example:
     A1,A2,A3,A4,
     B1,B2,B3,B4,
     C1,C2,C3,C4,
     D1,D2,D3,D4
    ===========================================================
    Enter the squares for the two-unit ship:\n\n"
  end

  def instructions
    "\n    Players take turns firing shots (by making a location guess) to attack enemy ships.
    On your turn, call out a letter and a number that identifies a row and column on your target grid.
    Your opponent checks that space on his ocean grid and responds -miss- if there is no ship there or -hit- if you guessed a space that contained a ship.
    Mark each of your shots (guesses) on your upper target grid using white pegs for your misses and red pegs for hits to keep track of your guesses.
    When one of your ships is hit, put a red peg into a hole on that ship on your ocean grid at the location of the hit.
    The ships are different sizes and have different numbers of holes. 
    When one of your ships has every slot filled with red pegs, you must announce to your opponent that he has sunk your ship. 
    The first player to sink all opposing ships wins the game.\n\n"
  end

  def quit
    "You're missing out on what could be the greatest time of your life!"
  end

  def invalid_response
    "That is not a valid response!"    
  end

  def invalid_coordinate_assignment
    "Follow the rules soldier!"
  end
  
  def congested_waters
    "These waters are unavailable! Chose again:"    
  end
end
