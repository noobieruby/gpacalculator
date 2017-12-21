require 'csv'

csv_options = { col_sep: ','}
filepath    = 'statesAndCapitals.csv'

states = []
cities = []

CSV.foreach(filepath, csv_options) do |row|
  # puts "#{row.join}"
  both = row.join.split('-')
  states << both.first.strip
  cities << both.last.strip
end

def scrape_for_capitals(state, capital)
  # TODO: return a hash of states and capitals.
  result = Hash[state.zip(capital)]
  quiz = state.sample
  puts "What is the capital city of #{quiz}?"
  answer = gets.chomp
  if answer == result[quiz]
    puts "Great answer!"
  else
    puts "Wrong answer...better study some more."
  end
end

scrape_for_capitals(states, cities)
