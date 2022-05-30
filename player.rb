class Player
  def initialize(name)
    @name = name
    @life = 3
  end
  
  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end

  def life
    @life
  end

  def wrong
    @life = @life - 1
  end
end
