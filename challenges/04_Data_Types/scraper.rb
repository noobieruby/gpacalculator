require 'rubygems'
require "open-uri"
require "nokogiri"

puts "Please enter a url that you want to scrape for links (dont forget http(s):// ):"
target = gets.chomp

doc = Nokogiri::HTML(open(target))

links = doc.css("link")
links_a = doc.css("a")

puts "<link> : #{links.length}"
puts "<a> : #{links_a.length}"

links.each do |link|
  puts link['href']
end

links_a.each_with_index do |link, index|
  puts "#{index + 1}. #{link['href']}"
end
