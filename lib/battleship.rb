require 'pry'
require './lib/message'
require './lib/battlefield'


class BattleShip
  include Messages 

  def display(output)
    puts output    
  end

  def run_game
    display(welcome)
    display(introduction)
    input = gets.chomp.downcase

    if input == "p" || input == "play"
      display(play_instructions)
    elsif input == "i" || input == "instructions"
      display(instructions)
    elsif input == "q" || input == "quit"
      display(quit)
    else
      display(invalid_response)
      run_game
    end
  end
  
end

# game = BattleShip.new
# game.run_game
