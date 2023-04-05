def save_data(title, note)
  File.open("data.txt", "a") do |file|
    file.puts "Title: #{title}"
    file.puts "Note: #{note}"
    file.puts "---------------------"
  end
end

def read_data
  begin
    file = File.open("data.txt", "r")
    puts file.read
    file.close
  rescue Errno::ENOENT
    puts "File not found."
  end
end

puts "Enter title:"
title = gets.chomp
puts "Enter note:"
note = gets.chomp

puts "Save or cancel? (Type 'save' or 'cancel')"
choice = gets.chomp

if choice.downcase == "save"
  save_data(title, note)
  puts "Data saved successfully!"
else
  puts "Data not saved."
end

read_data
