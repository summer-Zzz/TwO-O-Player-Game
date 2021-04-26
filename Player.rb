class Player
  def initialize(name, life)
    @name = name
    @life = life
  end

  def reduce_life(life)
    life = life - 1
  end
end 