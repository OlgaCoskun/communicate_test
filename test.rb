class Test
  attr_accessor :balls

  def initialize(questions)
    @questions = questions
    @questions = File.readlines(questions).map(&:chomp)

    @balls = 0
    @current_question = 0
  end

  def finished?
    @current_question >= @questions.size
  end

  def next_question
    puts @questions[@current_question]

    user_input = nil
    until user_input == 1 || user_input == 2 || user_input == 3
      puts "введите число: 1 – да, 2 – нет, 3 – иногда, и нажмите Enter"
      user_input = gets.to_i
    end

    @balls += 2 if user_input == 1
    @balls -= 1 if user_input == 3

    @current_question += 1
  end
end

# убрала лишний метод, не знаю для чего он был))
# написала конструкцию if покороче в одну строку (2 штуки)
# def finished? - убрала return
