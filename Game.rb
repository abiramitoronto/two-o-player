require "./questions"

class Game 

  def initialize
    @wrong = "Seriously? No!"
    @right = "YES! You are Correct"
  end

  def start_Game(p1,p2) 
    
    for question_prompt in TestQuestions::QUESTIONS
  
      puts "Player 1: #{question_prompt[:question]}"
      ans = $stdin.gets.chomp.to_i
      
      if question_prompt[:answer] == ans
         puts @right
      else
        puts @wrong
        p1.score -= 1
      end
      puts "------NEW TURN-------"
      puts "P1 : #{p1.display_Score} vs P2 : #{p2.display_Score}"
      if p1.score == 0 || p2.score == 0
        break
      end
      puts "Player 2: #{question_prompt[:question]}"
      ans = $stdin.gets.chomp.to_i
      if question_prompt[:answer] == ans
         puts @right
      else
        puts @wrong
        p2.score -= 1
      end
      puts "P1 : #{p1.display_Score} vs P2 : #{p2.display_Score}"
      if p1.score == 0 || p2.score == 0
        break
      end
    end
  end 

  def end_Game(p1,p2)
    if p1.score > p2.score 
      puts "Player 1 wins with the score of #{p1.display_Score}"
    elsif
      puts "Player 2 wins with the score of #{p2.display_Score}"
    else
      puts "Match draw"
    end
    puts "------GAME OVER-------"
    puts "Good Bye!"
  end
end

