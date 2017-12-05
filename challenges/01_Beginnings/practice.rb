astrix = "************************"

puts astrix
puts "Welcome to my dice simulator"
puts astrix

die = (1..6).to_a
random_result = die.sample

puts "In our simulation we roll a 6 sided die and it rolled #{random_result}"

puts "Please enter your result"
dice = gets.chomp.to_i
  if die.include?(dice)
    puts "Now we roll your dice 5 times"
    puts astrix
    # this works fine, but the .times method might be easier for you
    for i in (1..5) do
      puts die.sample
    end
    # 5.times do |i|
    #   puts die.sample
    # end
    puts astrix
    puts "Enter your results in order rolled (no spaces):"
    roll5 = gets.chomp
    numbers = roll5.split('').sort!
    big5 = numbers.last
    reversednumbers = numbers.reverse
    puts "you got #{numbers.join} or #{reversednumbers.join} (reveresed) and your highest number was #{big5}"
  else
    puts "something mustve went wrong"
  end
# a few quick thoughts here: what is the whole point of entering the result
# manually on line 26? why not just store your output from the loop in a variable
# and use that (I would use an array).. also there are way too many variables
# we don't need that many
