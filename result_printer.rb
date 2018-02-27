class ResultPrinter
  def initialize(results)
    @results = results
    @results = File.readlines(results).map(&:chomp)
  end

  def print_result(test)
    puts "\n\nРезультат теста (всего баллов - #{test.balls}):"

    # Логика вывода результатов в зависимости от баллов
    puts @results[0] if test.balls.between?(30, 32)
    puts @results[1] if test.balls.between?(25, 29)
    puts @results[2] if test.balls.between?(19, 24)
    puts @results[3] if test.balls.between?(14, 18)
    puts @results[4] if test.balls.between?(9, 13)
    puts @results[5] if test.balls.between?(4, 8)
    puts @results[6] if test.balls.between?(0, 3)
  end
end
