ask = "no"

while ask != "y"
  5.times { puts "Anoying output... : )" }
  puts "Do you want to stop seeing this crap? [Y/N]"
  input = gets.chomp
  if input == ""
    ask = "n"
  else
    ask = input[0].downcase
  end
end

# Extra Bonus question: What purpose does the if condition serve here?
# What would be a better way of writing this?
