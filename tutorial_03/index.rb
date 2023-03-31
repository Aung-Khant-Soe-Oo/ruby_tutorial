loop do 
  puts "Enter first number: "
  num1 = gets.chomp.to_i

  puts "Enter an operator(+ , - , * , /): "
  operator = gets.chomp

  puts "Enter second number: "
  num2 = gets.chomp.to_i

  case operator
  when '+'
    result = num1 + num2
  when '-'
    result = num1 - num2
  when '*'
    result = num1 * num2
  when '/'
    result = num1 / num2
  else 
    puts "Check operator"
    next
  end

  puts "Result: #{result}"

  puts "Do you want to continue? (y/n) : "
  ans = gets.chomp.downcase
  break if ans == 'n'
end