array = ["stuff", "more stuff", "red", "green", "yellow", 1, 2, 3, 4]

def map_method(ary)
  # Use the .map! method and the 'AND' operator to remove all colors from the array
  ary.map! do |element|
    if element != "red" && element != "green" && element != "yellow"
      element
    end
  end
  puts ary.join(' ')
end

def dot_each_method(ary)
  # TODO: Use the .each method to remove the integers from the array
  now = []
  ary.each do |element|
    unless element.is_a? Integer
      now << element
    end
  end
  puts now.join(' ')
end


puts "Original array => \n#{array}"

puts "the each method returns: "
dot_each_method(array)

puts "Array looks like this:"
puts "#{array}"

puts "The map method returns: "
map_method(array)

puts "Now the array looks like this:"
puts "#{array}"

# https://stackoverflow.com/questions/9586989/difference-between-map-and-each
