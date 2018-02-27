require_relative "test"
require_relative "result_printer"

puts "Тест \"Ваш уровень общительности\". Версия 3 (c) Olga Coskun\n\n"

questions = 'questions.txt'
results = 'results.txt'

test = Test.new(questions)
result_printer = ResultPrinter.new(results)

until test.finished?
  test.next_question
end

puts "Идет подсчет результатов, пожалуйста ожидайте..."

100.times do
  print '█'
  sleep rand(0.01..0.03)
end

result_printer.print_result(test)

