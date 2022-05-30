require './question'
require './player'

class Game
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end
  
  def play
    current_player = @p1;
    while(@p1.life > 0 && @p2.life > 0)

      question = Question.new()
      puts "#{current_player.name} : What does #{question.num1} plus #{question.num2} equal to?"
      ans = gets.chomp
      ans = ans.to_i
      if ans == question.ans
        puts "#{current_player.name}: YES! You are correct."
      else
        puts "#{current_player.name}: Seriously? No!"
        current_player.wrong
      end

      puts "P1: #{@p1.life}/3 vs P2: #{@p2.life}/3"

      if current_player == @p1
        current_player = @p2
      else
        current_player = @p1
      end
      
      if(@p1.life > 0 && @p2.life > 0)
        puts "----- NEW TURN -----"
      else
        puts "#{current_player.name} wins with a score of #{current_player.life}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
      end
    end
  end
end