randomdie = (1..6).to_a
randomedieresult = randomdie.sample

puts "********************************************************************************
                          Welcome to my dice simulator"

print "                                                                *******
in our computer simulation we roll a 6 sided die and it rolled  *  #{randomedieresult}  *
                                                                *******"


print "
what number did you roll:  "
dice = gets.chomp.to_i

puts "************************"
puts "press enter to roll your dice 6 times"
roll = gets.chomp
randomedieresult = randomdie.sample

for i in (1..3) do
  puts "  *******     *******
  *  #{(1..6).to_a.sample }  *     *  #{(1..6).to_a.sample }  *
  *******     *******
  "                                                 #supposed to be dice ;) try it out :)
end


print "write your results in order rolled (no spaces):  "
roll5 = gets.chomp.to_s
numbers = roll5.split('').sort
reversednumbers = numbers.reverse
big5 = numbers.length
puts "you got #{numbers} or #{reversednumbers} reveresed and your highest number was #{big5}"
puts "********************************************************************************"


##########################
##      Yay!            ##
##   Great Work!        ##
##########################
