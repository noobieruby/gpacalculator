congradulation = ["Keep it up", "Good work!","Well done!","Your a genius","Amazing","Good job!", "Your a rockstar", "Excellent","Keep up the good work"]

mistake = ["ahh, almost, keep on trying","good try keep it up","thats not the correct answer but keep it going","wrong answer but you got this!"]

statesCapitals_hash = {"Alabama"=>"Montgomery",
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

input = ""
input2 = ["Montgomery","Juneau","Phoenix","Little Rock", "Sacramento","Denver","Hartford","Dover","Tallahassee",
"Atlanta","Honolulu","Boise","Springfield","Indianapolis","Des Moines","Topeka","Frankfort","Baton Rouge","Augusta",
"Annapolis","Boston","Lansing","St. Paul","Jackson","Jefferson City", "Helena","Lincoln","Carson City","Concord",
"Trenton","Santa Fe","Albany","Raleigh","Bismarck","Columbus","Oklahoma City","Salem","Harrisburg","Providence",
"Columbia","Pierre","Nashville","Austin","Salt Lake City","Montpelier","Richmond","Olympia","Charleston","Madison",
"Cheyenne"]

capitals = ""


puts "********************************************************************************
                          Welcome to my Capital Finder"
ask = "no"

while ask != "n"
1.times {print "
Type a State: "
input = gets.chomp.capitalize

if statesCapitals_hash.include?(input) then
  capitals = statesCapitals_hash[input]
  puts "
#{capitals} is #{input}'s captial"
else "that does not seem to be a state"
end}
print "
do you want to find another capital? [Y/N]: "
goodbyecruelworld = gets.chomp
if goodbyecruelworld == ""
  ask = "y"
else
  ask = goodbyecruelworld.downcase
end
end



print "
Would you like to play a capital trivia? [Y/N]:  "
yes = gets.chomp.upcase

if yes == "Y"

for i in(1..10)
  random = input2.sample
  puts "
  #{random} is what states capital?"
  trivia = gets.chomp.capitalize
  statesCapitals_hash.include?(trivia)
  answer = statesCapitals_hash[trivia]

if answer == random
    puts "#{congradulation.sample}"
  else puts "#{mistake}"
  end
end
puts "good work"

else puts "thanks for using this tool"
end

print "
********************************************************************************"
