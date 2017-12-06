$astrix = "************************"    # unless you define several methods,
                                        # there is no need to declare global variables
puts $astrix
puts "Welcome to my dice simulator"
puts $astrix

randomdie = (1..6).to_a                 # there is really no need to make an array out of this variable
                                        # ..or to even store it in a variable in the first place
randomedieresult = randomdie.sample # now you have a random Integer

puts "in our computer simulation we roll a 6 sided die and it rolled #{randomedieresult}"
                                        # this only works because of string interpolation, normally you
                                        # would have to convert
                                        # your Integer (called Fixnum in Ruby) into a string

puts "
what number did you roll"
dice = gets.chomp.strip # you only really need the .strip to remove faulty input (space)
  if dice.include?(1..6) # what are you trying to do here and have you tried this in IRB?
                         # when you read the error message it should tell you "practice:15:in
                         # `include?': no implicit no conversion of Range into String
                         # (TypeError) from practice:15:in `<main>' "
                         # ****************************************************************** #
                         # when looking at your if statement, you should notice that dice is
                         # an integer
                         # if you read the ruby docs about the .include? method, you should
                         # notice that you cannot use it on an Integer
                         # you can whatsoever use the .include? method on a range or an array
                         # since you already have an array (called 'randomdie'), it would make
                         # sense to use the .include?(param) method on that array and put in
                         # your 'dice' variable as a parameter
    puts "roll your dice 5 times"
    puts $astrix
    puts "press eneter to roll 5 times" # ..typo
    roll = gets.chomp
    randomedieresult = randomdie.sample # this has nothing to do with your roll,
                                        # as you just print out 5 random Integers between 1 and 6
                                                        #*******************************#
    print "#{randomedieresult}"                         # Try to make a LOOP out of     #
    randomedieresult = randomdie.sample                 #       this mess.              #
    print "#{randomedieresult}"                         #*******************************#
    randomedieresult = randomdie.sample                               #
    print "#{randomedieresult}"                             #         #
    randomedieresult = randomdie.sample                   ##          #
    print "#{randomedieresult}"                         ###############
    randomedieresult = randomdie.sample                   ##
    print "#{randomedieresult}"                             #
    puts $astrix

                                              # Your .sort method doesn't work because it requires an array
                                              # you are giving it a string

    puts "write your results in order rolled" # ok, I see what you are trying to do here, nice
    roll5 = gets.chomp.to_s                   # what type of variable are you creating here,
    roll5.sort!                               # and have you tested this in IRB? ... also --> what does
                                              # the exclamation mark do here?
    big5 = roll5.size                         # why do you need this?
    reversednumbers = roll5.reverse!
    puts "you got #{numbers} or #{reversednumbers} (reveresed) and your highest number was #{big5}"
                                              # I like the idea, let's see how we can get this done

  else puts "something mustve went wrong"     # because of that error on line 15 you don't even get here,
                                              # but if that error was not there, what would be the point of
                                              # this else condition? The only way to get here would be wrong
                                              # user input on line 14, and that would be something you could
                                              # point out (like... the number you have entered is wrong or
                                              # something like that)
end
