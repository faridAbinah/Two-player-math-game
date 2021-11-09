class Player 
  attr_accessor :name,:score, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end


  def update_lives
    @lives -= 1
  end

end