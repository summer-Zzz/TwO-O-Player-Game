require "./Question"

class Player
  attr_accessor :name, :life
  def initialize(name, life)
    @name = name
    @life = life
  end

  def reduce_life
    @life = @life - 1
  end
end 