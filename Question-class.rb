class Question 
  attr_accessor :question,:number1, :number2, :answer

    def initialize
      @number1 = rand(1..20)
      @number2 = rand(1..20)
      @question = " #{@name} What does #{@number1} plus #{@number2} equal"
      @answer = @number1 + @number2
      
    end

   
    

  def check?(userAnswer)
  
    userAnswer == @answer
    
  end

end
