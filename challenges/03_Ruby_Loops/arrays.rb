array = ["random", "something", "green", "red", 23, 54, 555, 1, ["more stuff", 12]]


puts "What do you want to search for?"
find = gets.chomp

answerPositive = []

array.each do |element|
  if element == find
    answerPositive << 1
  end
end

if answerPositive.include?(1)
  puts "the array includes #{find}"
else
  puts "sorry the array doesnt include #{find}"
end
