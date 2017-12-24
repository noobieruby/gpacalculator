array = ["random", "something", "green", "red", 23, 54, 555, 1, ["more stuff", 12]]

puts "What do you want to search for?"
find = gets.chomp


puts ' '

def search(array, find)
  compare = []
  array.each do |search|
    if search == find
      puts "Your array does contain: #{search}"
    else
      compare << search
      if compare.count == array.count
        puts "The value #{find} is not in the array."
      end
    end
  end
end


search(array, find)
