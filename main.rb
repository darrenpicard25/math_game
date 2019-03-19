require "./get_question.rb"
require "./game_class.rb"
require "./player_class.rb"

player1 = Player.new "darren"
player2 = Player.new "enemy"

game1 = Game.new player1, player2

puts "The best Game ever"
puts "----------------------------\n\n"


game1.start
