array = ["random", "something", "green", "red", 23, 54, 555, 1, ["more stuff", 12]]


puts "What do you want to search for?"
find = gets.chomp

array.each do |find|
  puts "found it"
end
