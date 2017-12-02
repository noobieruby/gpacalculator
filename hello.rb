print "first name"
first_name = gets.chomp
first_name.capitalize!

print "last name"
last_name = gets.chomp
last_name.capitalize!

print "how many As do you have?"
gradea = gets.chomp


if gradea == "5"
      gradea1 = "20"
     elsif gradea == "4"
      gradea1 = "16"
    elsif gradea == "3"
      gradea1 = "12"
    elsif gradea == "2"
      gradea1 = "8"
    elsif gradea == "1"
      gradea1 = "4"
    else
      gradea = "0"
end

print "how many Bs do you have?"
gradeb = gets.chomp

if gradeb == "5"
      gradeb1 = "15"
    elsif gradeb == "4"
      gradeb1 = "12"
    elsif gradeb == "3"
      gradeb1 = "9"
    elsif gradeb == "2"
      gradeb1 = "6"
    elsif gradeb == "1"
      gradeb1 = "3"
    else
      gradeb1 = "0"
end

print "how many Cs do you have?"
gradec = gets.chomp

if gradec == "5"
      gradec1 = "10"
    elsif gradec == "4"
      gradec1 = "8"
    elsif gradec == "3"
      gradec1 = "6"
    elsif gradec == "2"
      gradec1 = "4"
    elsif gradec == "1"
      gradec1 = "2"
    else
      gradec1 = "0"
end

print "how many Ds do you have?"
graded = gets.chomp

if graded == "5"
      graded1 = "5"
    elsif graded == "4"
      graded1 = "4"
    elsif graded == "3"
      graded1 = "3"
    elsif graded == "2"
      graded1 = "2"
    elsif graded == "1"
      graded1 = "1"
    else
      graded1 = "0"
end

print "how many Fs do you have?"
gradef = gets.chomp

if gradef == "5"
  gradef1 = "0"
else
  gradef1 = "0"
end

totalgrades = gradea1 + gradeb1 + gradec1 + graded1 + gradef1
gpa = totalgrades.to_f / 5

puts "#{last_name}, #{first_name}: GPA is #{gpa}"
