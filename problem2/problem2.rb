# problem2.txt

# included in this folder is an html file called wynn.html

# if you view it in a browser you will see that it shows a series of hotel room names and their prices.

# Write code that extracts the room names and their corresponding price.

# Input: wynn.html
# Output: [ ["Resort Suite King", 151], ["Panoramic View King", 239], ....etc]

require 'mechanize'

def extract_hotel_data
  mechanize = Mechanize.new

  page = mechanize.get "file:///#{Dir.pwd}/wynn.html"
  room_search = page.search "a[@class='togglelink jqrt']"
  price_search = page.search "strong[@class='click_change_currency jq_tooltip toggle_price_per_night_or_stay']"

  rooms = room_search.map{|n| n.text}
  prices = price_search.map{|p| p.text.gsub(/[US$ ,]/,"").to_i}

  rooms_and_prices = []

  rooms.each_with_index{|name, index| rooms_and_prices << [name, prices[index]]}

  return rooms_and_prices
end

p extract_hotel_data
