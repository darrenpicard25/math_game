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
    else
      puts 'Error'
    end
  end
  def get_symbol
    num = rand 3
    case num
    when 0
      return '+'
    when 1
      return '-'
    when 2
      return 'x'
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
