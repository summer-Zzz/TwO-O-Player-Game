require './Player'
require './Question'

class Game
  def initialize()
    @player1 = Player.new('Player1', 3)
    @player2 = Player.new('Player2', 3)
    @question = Question.new()
  end

  def playing()
    @question.generate()
    user_input = gets.chomp()
    @question.checker(user_input)
  end
end

@my_game = Game.new()
@my_game.playing()
