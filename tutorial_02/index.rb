require 'date'

print "Enter your birthdate (YYYY-MM-DD): "

birthdate_str = gets.chomp
birthdate = Date.parse(birthdate_str)

age_in_days = (Date.today - birthdate).to_i
age_in_years = age_in_days / 365

if age_in_years < 19
  puts "You are a child."
else
  puts "You are an adult."
end