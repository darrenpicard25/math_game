class Player
  attr_reader :lives, :name

  def initialize name
    @name = name
    @lives = 3
  end

  def removeLife
    @lives -= 1
  end
end

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
      guess = gets.chomp.to_i
      if guess == question[:answer]
        puts "correct answer. Good Job"
      else
        puts "Wrong you suck"
        self.turn.removeLife
      end
      puts "---------------------------"
      change_turn
    end

    puts "\n\nGame has ended"

  end

  def change_turn
    @turn = @turn == p1 ? p2 : p1
  end
end

def get_question
  def generate_question symbol, num1, num2
    "What is #{num1} #{symbol} #{num2} ?"
  end
  def get_answer symbol, num1, num2
    case symbol
    when '+'
      return num1 + num2
    when '-'
      return num1 - num2
    when 'x'
      return num1 * num2
    when '/'
      return num1.to_f / num2
    else
      puts 'Error'
    end
  end
  def get_symbol
    num = rand 4
    case num
    when 0
      return '+'
    when 1
      return '-'
    when 2
      return 'x'
    when 3
      return '/'
    else
      puts 'Error'
    end
  end
  symbol = get_symbol
  num1 = rand 21
  num2 = rand 21
  question = generate_question symbol, num1, num2
  answer = get_answer symbol, num1, num2
  obj = {question: question, answer: answer}
end



player1 = Player.new "darren"
player2 = Player.new "enemy"

game1 = Game.new player1, player2

puts "The best Game ever"
puts "----------------------------\n\n"


game1.start
