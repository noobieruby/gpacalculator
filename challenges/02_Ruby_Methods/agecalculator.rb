require 'date'

puts "what date were you born M-D-Y?"
testdate = gets.chomp

beginDate = Date.strptime(testdate, "%d-%m-%Y")

endDate = Time.now

days = endDate.to_date - beginDate

years = days / 365.25
months = days / 29.53
hours = days * 24
mins = days * 1440
seconds = days * 86400


puts "***************************
* You have lived          *
* #{years.to_i} years or             *
* #{months.to_i} months or           *
* #{days.to_i} days or            *
* #{mins.to_i} hours or        *
* #{mins.to_i} minutes or      *
* #{seconds.to_i} seconds or    *
***************************"
