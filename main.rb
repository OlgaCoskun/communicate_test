require_relative "lib/test"
require_relative "lib/result_printer"

puts "Тест \"Ваш уровень общительности\". Версия 3 (c) Olga Coskun\n\n"

questions = 'data/questions.txt'
results = 'data/results.txt'

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

