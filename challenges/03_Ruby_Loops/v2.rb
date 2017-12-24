array = ["random", "something", "green", "red", 23, 54, 555, 1, ["more stuff", 12]]


puts "What do you want to search for?"
find = gets.chomp

answerPostive = []

array.each do |element|
if element == find
  answerPositive << yes
end
end

if answerPostive.include?("yes")
  puts "the array includes #{find}"
else puts "sorry the array doesnt include #{find}"
end
