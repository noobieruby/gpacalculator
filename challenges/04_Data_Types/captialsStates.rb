statesCapitals_hash = {
"Alabama"=>"Montgomery",
 "Alaska"=>"Juneau",
 "Arizona"=>"Phoenix",
 "Arkansas"=>"Little Rock",
 "California"=>"Sacramento",
 "Colorado"=>"Denver",
 "Connecticut"=>"Hartford",
 "Delaware"=>"Dover",
 "Florida"=>"Tallahassee",
 "Georgia"=>"Atlanta",
 "Hawaii"=>"Honolulu",
 "Idaho"=>"Boise",
 "Illinois"=>"Springfield",
 "Indiana"=>"Indianapolis",
 "Iowa"=>"Des Moines",
 "Kansas"=>"Topeka",
 "Kentucky"=>"Frankfort",
 "Louisiana"=>"Baton Rouge",
 "Maine"=>"Augusta",
 "Maryland"=>"Annapolis",
 "Massachusetts"=>"Boston",
 "Michigan"=>"Lansing",
 "Minnesota"=>"St. Paul",
 "Mississippi"=>"Jackson",
 "Missouri"=>"Jefferson City",
 "Montana"=>"Helena",
 "Nebraska"=>"Lincoln",
 "Nevada"=>"Carson City",
 "New Hampshire"=>"Concord",
 "New Jersey"=>"Trenton",
 "New Mexico"=>"Santa Fe",
 "New York"=>"Albany",
 "North Carolina"=>"Raleigh",
 "North Dakota"=>"Bismarck",
 "Ohio"=>"Columbus",
 "Oklahoma"=>"Oklahoma City",
 "Oregon"=>"Salem",
 "Pennsylvania"=>"Harrisburg",
 "Rhode Island"=>"Providence",
 "South Carolina"=>"Columbia",
 "South Dakota"=>"Pierre",
 "Tennessee"=>"Nashville",
 "Texas"=>"Austin",
 "Utah"=>"Salt Lake City",
 "Vermont"=>"Montpelier",
 "Virginia"=>"Richmond",
 "Washington"=>"Olympia",
 "West Virginia"=>"Charleston",
 "Wisconsin"=>"Madison",
 "Wyoming"=>"Cheyenne"}

capitals = []

puts "write a state"
state = gets.chomp

puts "The capital of #{state} is #{statesCapitals_hash[state]}."

# statesCapitals_hash.each {|key, value| puts "#{states} is #{value}" }

# if you want to create an array with all the capitals, you can use the same syntax you tried on line 60
# just push your results into the array instead of putting them out to the console with whatever you wrote into the
# states variable

again = 'y'

while again[0].upcase != 'N'
  random_state = statesCapitals_hash.keys.to_a.sample
  puts "What is the capital of #{random_state}?"
  ans = gets.chomp
  if ans == statesCapitals_hash[random_state]
    puts "great answer"
  else
    puts "you suck, go and read some books"
  end
  puts "you wanna go again?(y/n)"
  again = gets.chomp

  if again == ''
    again = 'n'
    puts "no input means no ; )"
  end

  while again[0].downcase != 'y' and again[0].downcase != 'n'
    puts "please enter y or n"
    again = gets.chomp
  end
end
