array = ["random", "something", "green", "red", 23, 54, 555, 1, ["more stuff", 12]]

puts "What do you want to search for?"
find = gets.chomp

if array.include?(find)
  puts "Your array does contain: #{find}"
else
  puts "Sorry the array does not contain your search value."
end

puts ' '

array.each do |search|
  if search == find
    puts "Your array does contain: #{search}"
  else
    puts "Sorry the array does not contain your search value."
  end
end


array.each_with_index do |value, index|
  puts "#{value} --> index: #{index}"
end

puts array[8]
