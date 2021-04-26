
class Question
  attr_accessor :answer
  def initialize
    @rand1 = rand(1...20)
    @rand2 = rand(1...20)
    @answer = @rand1 + @rand2
  end

  def ask_question
    puts "What does #{@rand1} plus #{@rand2} equal?"
  end
end