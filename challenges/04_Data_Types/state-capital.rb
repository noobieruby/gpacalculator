congradulation = ["Keep it up", "Good work!","Well done!","Your a genius","Amazing","Good job!", "Your a rockstar", "Excellent","Keep up the good work"]

mistake = ["ahh, almost, keep on trying","good try keep it up","thats not the correct answer but keep it going","wrong answer but you got this!"]

# I like the two arrays of response possibilities
# but writing this whole hash into the script is not the most efficient way, check out my parser.rb example and the csv that goes with it

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
"Cheyenne"]  # why did you create this array? You already have all the info in the hash

capitals = ""


puts "********************************************************************************
                          Welcome to my Capital Finder"
ask = "no"

# there are a few curious things going on here, like why are you using the 1.times method? and why are there curly
# brackets after the 1.times? there is no need for either and even though it works, it just looks messy

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
if goodbyecruelworld == "" # --> nice way to catch an empty input
  ask = "y"
else
  ask = goodbyecruelworld.downcase
end
end

# nice to break the hash exploration of the hash and the trivia up into two parts
# but why are you only allowing the trivia to run through 10 times?

print "
Would you like to play a capital trivia? [Y/N]:  "
yes = gets.chomp.upcase

if yes == "Y"

for i in(1..10)
  random = input2.sample
  puts "
  #{random} is what states capital?"
  trivia = gets.chomp.capitalize
  statesCapitals_hash.include?(trivia) # Why did you write this line? What does it do, where do you use it and why do you need it?
  answer = statesCapitals_hash[trivia]

if answer == random
    puts "#{congradulation.sample}"
  else puts "#{mistake}"            # why did you make a big ol array with all kinds of possible responses, but dont use the .sample
  end                               # method to display a random one here, you did it with the positive response
end
puts "good work"                    # this line prints automatically after running the trivia 10 times, why is it always "good work"?
                                    # what if the user messed up 10 times?
else puts "thanks for using this tool"   # your indentation is messed up
end

print "
********************************************************************************"

# SO yeah, I guess you did solve the requirements, but this is pretty messy.
# I uploaded another example and even though it is a bit more advanced in the way it reads the hash try to read through it and
# see how it could help you to clean up your code. You really should try to understand everything your script is doing here, right
# now it does not look like it. Don't be shy to google. I think it is great that you found the right syntax to read your hash on lines
# 83 and 113, but you could have gotten this solution from the ruby docs I linked in the README.md
