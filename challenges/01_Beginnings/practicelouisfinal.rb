astrix = "************************"     # unless you define several methods,
                                        # there is no need to declare global variables
puts astrix
puts "Welcome to my dice simulator"
puts astrix

randomdie = (1..6).to_a                      # there is really no need to make an array out of this variable
                                        # ..or to even store it in a variable in the first place
randomedieresult = randomdie.sample     # now you have a random Integer

puts "in our computer simulation we roll a 6 sided die and it rolled #{randomedieresult}"
                                        # this only works because of string interpolation, normally you
                                        # would have to convert
                                        # your Integer (called Fixnum in Ruby) into a string

puts "
what number did you roll"
dice = gets.chomp.to_i

    puts "roll your dice 5 times"
    puts astrix
    puts "press enter to roll 5 times"
    roll = gets.chomp
    randomedieresult = randomdie.sample

    for i in (1..5) do
    puts die.sample          # ========> indentation is sloppy, also where do you define the variable "Die"?
end                          # ========> why don't you use a variable that you have already defined earlier?


    puts "write your results in order rolled" # ok, I see what you are trying to do here, nice
    roll5 = gets.chomp.to_s                   # what type of variable are you creating here,
    reversednumbers = roll5.reverse!
    puts "you got #{numbers} or #{reversednumbers} (reveresed) and your highest number was #{big5}"
    #### --> Where do you define the variables nambers and big5?

                                              # I like the idea, let's see how we can get this done

  else puts "something mustve went wrong"     # because of that error on line 15 you don't even get here,
  ### You need to have an if statement to make an else condition...end then end it...just get rid of this one                                            # but if that error was not there, what would be the point o
                                              # point out (like... the number you have entered i                                              # something like that)
end ###
    ####
    #####
    ###### ********** What does this end do here?
    #######################

    #### So yeah that's it, delete them "end"s, fix your variables and this should run fine
    #### also, in order to use the .sort method just put your number string from line 32 in some square brackets and call [].sort on that
