class Question
  def initialize()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @ans = @num1 + @num2
  end
  
  def num1
    @num1
  end

  def num2
    @num2
  end

  def ans
    @ans
  end
end