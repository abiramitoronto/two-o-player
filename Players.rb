class Players
 attr_accessor :score,:total_score

 def initialize
  @score = 3
  @total_score = 3
 end

 def display_Score
  return "#{@score}/#{total_score}"
 end
end