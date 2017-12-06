require 'date'

puts "what date were you born D-M-Y?" # your date format was wrong
                                      # in this line, read line 6, now it's right
testdate = gets.chomp

beginDate = Date.strptime(testdate, "%d-%m-%Y")

endDate = Time.now

days = endDate.to_date - beginDate

years = days / 365.25
months = days / 29.53
hours = days * 24
mins = days * 1440
seconds = days * 86400


puts "
*****************************
* You have lived            *
* #{years.to_i} years or               *
* #{months.to_i} months or             *
* #{days.to_i} days or             *
* #{mins.to_i} hours or         *
* #{mins.to_i} minutes or       *
* #{seconds.to_i} seconds        *
*****************************"

# Well done : )
# the only thing I could think of is catching bad input (currently you are getting an
# error of the date format is wrong) how could you prevent this? Maybe some branching
# while checking for greater than 12 or 30/31 values?
# You could brake this up by reading the days, month and year values seperately and
# checking their validity first
# Another thing is your output. While it does look pretty cool when the values fit,
# it tends to break when the output values are too small. How could you fix this?
