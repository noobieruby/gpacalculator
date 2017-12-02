def gpaCalc
  puts "\n Welcome to my GPA calculator"
  divide = " ****************************"
  puts divide

  puts "Do you want instructions. (Y/N)"
  ins = gets.chomp.upcase

  instructions if ins[0] == "Y"

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
end

def instructions
  puts "First enter you last and first name."
  puts "Then enter the amount of As, Bs, Cs, Ds, and Fs you got that term or school year."
  puts "If you got 0 of that grade you can either write nothing or a 0"
end

puts gpaCalc
