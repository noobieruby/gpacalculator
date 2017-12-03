########################################
# This is an unneccassary complicated  #
# version of this seeminlgy simple     #
# script, which puts every step into   #
# it's own method, with descriptions.  #
########################################

# Global variables that can be shared in
# all methods/functions of this script.
# Notice the dollar sign, which denotes
# a gloabl variable.

$divide = " ****************************"
$first = ""
$last = ""

# The greeting method, which puts out the
# greeting and asks the user if he/she
# wants the help text to be displayed.
# This method then also catches the user's
# first and last name and stores them in
# global variables that can be used in other
# methods:

def greeting
  puts "\n Welcome to my GPA calculator"
  puts $divide

  puts "\nDo you want instructions. (Y/N)"
  ins = gets.chomp.upcase

  instructions if ins[0] == "Y"

  print "Please enter your first name: \n"
  $first = gets.chomp
  print "Please enter your last name: \n"
  $last = gets.chomp
end

# This is the main function of this script
# which deals with the math part.
# This function creates three arrays, one
# with the grade names and two that will
# be filled with the user's input.
# The each.with_index loop goes through the
# grade_names array and and stores each
# grade_value as given by the user to then
# automatically calculate the grade_weight
# by taking the user input and dividing it
# by 4 minus the index. TIPP: if you want to
# see the array that is created in the back-
# ground to calculate the GPA, just add the
# letter p on line 72, before the
# "grade_weight << grades * (4 - i)" part, and
# run the code.
# Instead of storing the grade_values and
# grade_weight in a global variable, they
# are directly passed on to the results
# method/function, which is explained later:

def gpaCalc
  grade_names = [ "As", "Bs", "Cs", "Ds", "Fs" ]
  grade_values = []
  grade_weight = []

  grade_names.each.with_index do |grade, i|
    puts "How many #{grade} do you have?"

    grades = gets.chomp.to_i
    grade_values << grades

p    grade_weight << grades * (4 - i) # Delete the p for cleaner output
  end
  results(grade_values, grade_weight)
end

# The results funtion/method accepts two
# params to be passed into it, the values
# and the weight.
# We pass those two params in the form
# of two arrays that were populated in the
# gpaCalc method. The results function then
# adds all the values in each of these arrays
# with the reduce(:+) method and weight by
# values to get the GPA score, which this
# function then also puts out in the console.

def results(values, weight)
  gpa = weight.reduce(:+).to_f / values.reduce(:+)

  puts $divide
  puts "\n#{$first.capitalize} #{$last.capitalize}, your GPA is #{gpa.to_s} \n\n"
end

def instructions
  puts "First enter you last and first name."
  puts "Then enter the amount of As, Bs, Cs, Ds, and Fs you got that term or school year."
  puts "If you got 0 of that grade you can either write nothing or a 0"
  puts $divide
end

########################################
# Since everything is functionalized   #
# in this version, we have to call     #
# each function we cant to use. This   #
# way of organizing our code becomes   #
# very helpful as programs grow in     #
# complexity. It is easier to deal     #
# with individual methods/functions    #
# than to dig through hundreds or      #
# thousands or tens of thousands of    #
# lines of code. Once a method has     #
# been defined, it can be imported in  #
# any other class or module of the     #
# code base to be used.                #
########################################

puts greeting
puts gpaCalc
