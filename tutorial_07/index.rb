class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def print_name
    puts "Name: #{@name}"
  end
end

class Student < Person
  attr_accessor :roll_number

  def initialize(name, roll_number)
    super(name)
    @roll_number = roll_number
  end

  def print_roll
    puts "Roll number: #{@roll_number}"
  end
end

puts "Choose an option:\n1. Person\n2. Student"
choice = gets.chomp.to_i

case choice
when 1
  puts "Enter the name of the person:"
  name = gets.chomp
  person = Person.new(name)
  person.print_name
when 2
  puts "Enter the name of the student:"
  name = gets.chomp
  puts "Enter the roll number of the student:"
  roll_number = gets.chomp.to_i
  student = Student.new(name, roll_number)
  student.print_name
  student.print_roll
else
  puts "Invalid choice"
end
