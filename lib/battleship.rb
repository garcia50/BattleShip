require 'pry'
require './lib/battlefield'
require './lib/comp_battlefield'
require './lib/user_battlefield'
require './lib/messages'
require './lib/validations'

class BattleShip
  include Messages 
  include Validations

  def initialize
    @user_battlefield = UserBattlefield.new
    @comp_battlefield = CompBattlefield.new
    @user_count = 0
    @comp_count = 0
    @time = Time.now
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
    present(two_unit_ship_coordinates)
    @user_battlefield.user_coordinates_destroyer(user_input) 
    present(three_unit_ship_coordinates)
    @user_battlefield.user_coordinates_cruiser(user_input)  
    binding.pry
    user_shooting
  end

  def user_shooting
    present(shoot) 
    shot = user_input
    if !keys.include?(shot)
      present(stay_on_the_grid)
      user_shooting
    elsif @comp_battlefield.battlefield.field[shot][1] != " "
      present(no_repeat)
      user_shooting
    elsif @comp_battlefield.ships.destroyer.include?(shot) || @comp_battlefield.ships.cruiser.include?(shot)
      present(hit)
      @comp_battlefield.battlefield.field[shot][1] = "H"
      game_over(@user_battlefield)
    else
      present(miss)
      @comp_battlefield.battlefield.field[shot][1] = "M"
      present(@comp_battlefield.battlefield.game_board)
      comp_shooting
    end
  end

  def comp_shooting
    shot = keys.sample
    if @user_battlefield.battlefield.field[shot][1] != " "
      comp_shooting
    elsif @user_battlefield.ships.destroyer.include?(shot) || @user_battlefield.ships.cruiser.include?(shot)
      @user_battlefield.battlefield.field[shot][1] = "H"
      game_over(@comp_battlefield)
    else
      present(miss)
      @user_battlefield.battlefield.field[shot][1] = "M"
      present(@user_battlefield.battlefield.game_board)
      user_shooting
    end
  end

  def game_over(opponent)
    if opponent == @user_battlefield
      @user_count += 1
      hit_count(@user_count, @comp_battlefield)
    else
      @comp_count += 1
      hit_count(@comp_count, @user_battlefield)
    end
  end

  def hit_count(count, opponent)    
    if count == 5
      end_game_sequence
    elsif opponent == @comp_battlefield
      present(@comp_battlefield.battlefield.game_board)
      comp_shooting
    else
      present(@user_battlefield.battlefield.game_board)
      user_shooting
    end
  end

  def end_game_sequence
    gameplay_time = Time.now - @time
    if @user_count == 5
      shots = count_shots(@comp_battlefield)
      present(user_won(shots, gameplay_time))
    else 
      shots = count_shots(@user_battlefield)
      present(user_lost(shots, gameplay_time))
    end
  end

  def count_shots(opponent)
    shots = 0
    opponent.battlefield.field.each_value do |value|
      shots += 1 if value[1] == "H" || value[1] == "M"
    end
    shots
  end

end






















