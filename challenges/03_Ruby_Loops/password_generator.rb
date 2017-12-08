astrix = "*"
puts "********************************************************************************
                          Welcome to my password generator"
ask = "no"
while ask != "n"
  1.times { print "how long do you want your password? (type number): "
    answer = gets.chomp.to_i
    astrixTotal = astrix * answer
    puts "**************#{astrixTotal}"
    print  "* password: "
      for i in (1..answer.to_i) do
        a = ('a'..'z').to_a + ('0'..'9').to_a + ('A'..'Z').to_a+ ["-"].to_a
        print "#{a.sample}"
end
print " *
**************#{astrixTotal}
"}
  print "Do you want to make another password? [Y/N] "
  input = gets.chomp
  if input == ""
    ask = "y"
  else
    ask = input[0].downcase
  end
end
puts "

                                  Thank You

********************************************************************************"
