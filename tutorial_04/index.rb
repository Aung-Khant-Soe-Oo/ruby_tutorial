puts "Enter the size of the array"
array_size = gets.chomp.to_i

animal_array = []
while animal_array.length < array_size 
  puts "Enter animal name: "
  animal_name = gets.chomp
  animal_array.push(animal_name)
end

sorted_animal_array = animal_array.sort
puts "Sorted animal array: #{sorted_animal_array}"

unique_animal_array =sorted_animal_array.uniq
puts "Unique animal array: #{unique_animal_array}"

reversed_animal_array = unique_animal_array.reverse
puts "Reversed animal array: #{reversed_animal_array}"
