puts "Welcome to my GPA calculator"
puts "****************************"

puts "Please enter your first name: \n"
first = gets.chomp
puts "Please enter your last name: \n"
last = gets.chomp

puts "How many As do you have? \n"
a_s = gets.chomp.to_i
a = a_s * 4

puts "How many Bs do you have? \n"
b_s = gets.chomp.to_i
b = b_s * 3

puts "How many Cs do you have? \n"
c_s = gets.chomp.to_i
c = c_s * 2

puts "How many Ds do you have? \n"
d_s = gets.chomp.to_i
d = d_s * 1

puts "How many Fs do you have? \n"
f_s = gets.chomp.to_i
f = f_s * 0

amount_of_grades = a_s + b_s + c_s + d_s + f_s
weight_of_grades = a + b + c + d + f

gpa = weight_of_grades.to_f / amount_of_grades

puts "****************************"
puts "#{first.capitalize} #{last.capitalize}, your GPA is #{gpa.to_s}"  
