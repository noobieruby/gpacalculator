puts "  Welcome to my GPA calculator"
puts "*********************************"
print "Do you want instructions. (Y/N)"
instructions = gets.chomp

if instructions == "Y"
  puts "First enter you last and first name."
  puts "Then enter the amount of As, Bs, Cs, Ds, and Fs you got that term or school year."
  puts "If you got 0 of that grade you can either write nothing or a 0"
  puts "*********************************"
  puts "Please enter your FIRST NAME"
  first_name = gets.chomp
  first_name.capitalize!

  puts "Please enter your LAST NAME"
  last_name = gets.chomp
  last_name.capitalize!

  puts "how many As do you have?"
  gradea = gets.chomp.to_i

  gradea1 = gradea * 4

  puts "how many Bs do you have?"
  gradeb = gets.chomp.to_i

  gradeb1 = gradeb * 3


  puts "how many Cs do you have?"
  gradec = gets.chomp.to_i

  gradec1 =  gradec * 2

  puts "how many Ds do you have?"
  graded = gets.chomp.to_i

  graded1 = graded * 1

  puts "how many Fs do you have?"
  gradef = gets.chomp.to_i

  gradef1 = gradef * 0

  totalgrades = gradea1 + gradeb1 + gradec1 + graded1 + gradef1
  amountofgrades = gradea + gradeb + gradec + graded + gradef
  gpa = totalgrades.to_f / amountofgrades

  puts "#{last_name}, #{first_name}: GPA is #{gpa}"


else

puts "Please enter your First Name"
first_name = gets.chomp
first_name.capitalize!

puts "Please enter your Last Name"
last_name = gets.chomp
last_name.capitalize!

puts "how many As do you have?"
gradea = gets.chomp.to_i

gradea1 = gradea * 4

puts "how many Bs do you have?"
gradeb = gets.chomp.to_i

gradeb1 = gradeb * 3


puts "how many Cs do you have?"
gradec = gets.chomp.to_i

gradec1 =  gradec * 2

puts "how many Ds do you have?"
graded = gets.chomp.to_i

graded1 = graded * 1

puts "how many Fs do you have?"
gradef = gets.chomp.to_i
gradef1 = gradef * 0

totalgrades = gradea1 + gradeb1 + gradec1 + graded1 + gradef1
amountofgrades = gradea + gradeb + gradec + graded + gradef
gpa = totalgrades.to_f / amountofgrades

puts "#{last_name}, #{first_name}: GPA is #{gpa}"

end
