require 'date'

today = Date.today

5.times do |i|
  date = today - i - 1
  puts date.strftime("%a")
end