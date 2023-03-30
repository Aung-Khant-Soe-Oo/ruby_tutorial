height = 11
spaces = (height / 2) + 1
height.times do |row|
  if row < (height / 2) + 1 
    spaces -= 1
    stars = row * 2 + 1
  else
    spaces += 1
    stars = (height - row - 1) * 2 + 1
  end
  puts ' ' * spaces + '*' * stars
end