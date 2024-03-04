class Player 

  attr_accessor :lifepoints
  attr_reader :name

  def initialize(name)
    @name = name
    @lifepoints = 3
  end

  def lose_life
    @lifepoints -= 1
  end

  def alive?
    @lifepoints > 0
  end

end
