puts "\n Welcome to my GPA calculator"
divide = " ****************************"
puts divide

print "Please enter your first name: \n"
first = gets.chomp
print "Please enter your last name: \n"
last = gets.chomp

grade_names = [ "As", "Bs", "Cs", "Ds", "Fs" ]
grade_values = []
grade_weight = []

grade_names.each.with_index do |grade, i|
  puts "How many #{grade} do you have?"

  grades = gets.chomp.to_i
  grade_values << grades

  grade_weight << grades * (4 - i)
end

gpa = grade_weight.reduce(:+).to_f / grade_values.reduce(:+)

puts divide
puts "#{first.capitalize} #{last.capitalize}, your GPA is #{gpa.to_s} \n\n"
