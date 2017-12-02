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

grade_names.each do |grade|
  puts "How many #{grade} do you have?"

  grades = gets.chomp.to_i
  grade_values << grades

  if grade == "As"
    grade_weight << grades * 4
  elsif grade == "Bs"
    grade_weight << grades * 3
  elsif grade == "Cs"
    grade_weight << grades * 2
  elsif grade == "Ds"
    grade_weight << grades * 1
  elsif grade == "Fs"
    grade_weight << grades * 0
  end
end

gpa = grade_weight.reduce(:+).to_f / grade_values.reduce(:+)

puts divide
puts "#{first.capitalize} #{last.capitalize}, your GPA is #{gpa.to_s} \n\n"  
