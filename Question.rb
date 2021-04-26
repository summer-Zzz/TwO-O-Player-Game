class Question
  def initialize()
    @answer = 0
  end

  def checker (playerAnswer)
    if @answer == playerAnswer.to_i
    puts "YES! You are correct."
    return true
    else 
    puts "Seriously? No!"
    return false
    end
  end

  def generate()
    rand1 = rand(1...20)
    rand2 = rand(1...20)
    @answer = rand1 + rand2

    puts "What does #{rand1} plus #{rand2} equal?"
  end
end