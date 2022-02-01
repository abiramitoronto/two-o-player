require "pp"
require "./questions"
require "./Players"
require "./Game"

p1 = Players.new 
p2 = Players.new

gamer = Game.new
gamer.start_Game(p1,p2)
gamer.end_Game(p1,p2)