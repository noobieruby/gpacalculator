print "first name"
first_name = gets.chomp
first_name.capitalize!

print "last name"
last_name = gets.chomp
last_name.capitalize!

print "how many As do you have?"
gradea = gets.chomp.to_i

gradea1 = gradea*4

print "how many Bs do you have?"
gradeb = gets.chomp.to_i

gradeb1 = gradeb * 3


print "how many Cs do you have?"
gradec = gets.chomp.to_i

gradec1 =  gradec* 2

print "how many Ds do you have?"
graded = gets.chomp.to_i

graded1 = graded * 1

print "how many Fs do you have?"
gradef = gets.chomp.to_i

gradef1 = gradef * 0

totalgrades = gradea1 + gradeb1 + gradec1 + graded1 + gradef1
gpa = totalgrades.to_f / 5

puts "#{last_name}, #{first_name}: GPA is #{gpa}"
