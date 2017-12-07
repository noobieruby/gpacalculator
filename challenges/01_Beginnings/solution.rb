astrix = "************************"     # unless you define several methods,
                                        # there is no need to declare global variables
puts astrix
puts "Welcome to my dice simulator"
puts astrix

randomdie = (1..6).to_a                       # there is really no need to make an array out of this variable
                                              # ..or to even store it in a variable in the first place
randomedieresult = randomdie.sample           # now you have a random Integer

puts "in our computer simulation we roll a 6 sided die and it rolled #{randomedieresult}"
                                              # this only works because of string interpolation, normally you
                                              # would have to convert
                                              # your Integer (called Fixnum in Ruby) into a string

puts "what number did you roll?"
dice = gets.chomp.to_i                        # we don't use this input at all

puts "Let's roll your dice 5 times"

for i in (1..5) do
  puts randomdie.sample                       # wrong variable name
end


puts "write your results in order rolled"     # ok, I see what you are trying to do here, nice
roll5 = gets.chomp.to_s
numbers = roll5.split('').sort                # what type of variable are you creating here,
reversednumbers = numbers.join.reverse
big5 = numbers.last
puts "You got #{numbers.join} (in order) or #{reversednumbers} (reveresed) and your highest number was #{big5}"

                                              # I like the idea, let's see how we can get this done
                                              # because of that error on line 15 you don't even get here,
                                              # but if that error was not there, what would be the point o
                                              # point out (like... the number you have entered i                                              # something like that)

