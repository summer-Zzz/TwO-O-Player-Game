require './Player'
require './Question'

class Game
  def initialize()
  end

  def checker (question, playerAnswer)
    if question == playerAnswer.to_i
    puts "YES! You are correct."
    return true
    else 
    puts "Seriously? No!"
    return false
    end
  end

  def playing()
    @player1 = Player.new('Player1', 3)
    @player2 = Player.new('Player2', 3)
    @current_player = @player1
    while @player1.life > 0 && @player2.life > 0
      @question = Question.new()
      print "#{@current_player.name}: "
      @question.ask_question()
      user_input = gets.chomp()
      if @question.answer == user_input.to_i
        puts "YES! You are correct."
        else 
        puts "Seriously? No!"
        @current_player.reduce_life
      end
      puts "P1: #{@player1.life}/3 vs P2: #{@player2.life}/3"
      puts "---- NEW TURN ----"
      if @current_player.name == 'Player1' 
        @current_player = @player2
      else
        @current_player = @player1
      end

    end
    if @player1.life > @player2.life
      puts "Player 1 wins with a score of #{@player1.life}/3"
    else
      puts "Player 2 wins with a score of #{@player2.life}/3"
    end
    puts "--- GAME OVER ----"
    puts "Good bye!"
  end
end
