class Game
  attr_reader :p1, :p2, :turn
  def initialize p1, p2
    @p1 = p1
    @p2 = p2
    @turn = p1
  end

  def start
    while p1.lives > 0 && p2.lives > 0
      puts "#{p1.name} #{p1.lives}/3 | #{p2.name} #{p2.lives}/3"
      puts "---------------------------"
      question = get_question
      puts "#{self.turn.name}: #{question[:question]}?"
      print "==> "
      guess = gets.chomp.to_i
      if guess == question[:answer]
        puts "correct answer. Good Job"
      else
        puts "Wrong! you suck! answer was #{question[:answer]}"
        self.turn.removeLife
      end
      puts "---------------------------\n\n\n\n"
      change_turn
    end

    puts "Game has ended. #{turn.name} Won with #{turn.lives} #{turn.lives == 1 ? 'life' : 'lives'} remaining\n\n"


  end

  def change_turn
    @turn = @turn == p1 ? p2 : p1
  end
end