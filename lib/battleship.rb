require 'pry'
require './lib/message'
require './lib/battlefield'
require './lib/comp_battlefield'
require './lib/user_battlefield'

class BattleShip
  include Messages 

  def initialize
    @user_battlefield = Userbattlefield.new
    @comp_battlefield = CompBattlefield.new
  end

  def present(output)
    puts output    
  end

  def user_input
    gets.chomp.strip  
  end

  def run_game
    present(welcome)
    present(introduction)
    input = gets.chomp.downcase
    if input == "p" || input == "play"
      present(play_instructions)
      gameplay
    elsif input == "i" || input == "instructions"
      present(instructions)
    elsif input == "q" || input == "quit"
      present(quit)
    else
      present(invalid_response)
      run_game
    end
  end

  def gameplay
    @comp_battlefield.comp_coordinates_destroyer 
    @comp_battlefield.comp_coordinates_cruiser

  end
  
end

# game = BattleShip.new
# game.run_game













