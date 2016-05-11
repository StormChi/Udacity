require 'json'
path = File.join(File.dirname(__FILE__), '../data/products.json')
file = File.read(path)
products_hash = JSON.parse(file)

# Print today's date

puts "                     _            _       "
puts "                    | |          | |      "
puts " _ __  _ __ ___   __| |_   _  ___| |_ ___ "
puts "| '_ \\| '__/ _ \\ / _` | | | |/ __| __/ __|"
puts "| |_) | | | (_) | (_| | |_| | (__| |_\\__ \\"
puts "| .__/|_|  \\___/ \\__,_|\\__,_|\\___|\\__|___/"
puts "| |                                       "
puts "|_|                                       "


# For each product in the data set:
  # Print the name of the toy
  # Print the retail price零售价 of the toy
  # Calculate and print the total number of purchases购买
  # Calculate and print the total amount of sales
  # Calculate and print the average price the toy sold for
  # Calculate and print the average discount (% or $) based off the average sales price

products_hash["items"].each do |toy|
  puts toy["title"]
	puts "*" * 30
	retail_price =  toy["full-price"].to_f
  total_number =  toy["purchases"].length
  total_sales =  toy["purchases"][0]["price"] + toy["purchases"][1]["price"]
	average_price = total_sales / total_number
  average_discount = (retail_price - average_price) / retail_price
	puts "retail_price: $#{retail_price}"
	puts "total_number: #{total_number}"
	puts "total_sales: $#{total_sales}"
	puts "average_price: $#{average_price}"
	puts "average_discount: #{'%.04f' % average_discount}" # i don't know how to become percentage
	puts "*" * 30
  puts ""
end

	puts " _                         _     "
	puts "| |                       | |    "
	puts "| |__  _ __ __ _ _ __   __| |___ "
	puts "| '_ \\| '__/ _` | '_ \\ / _` / __|"
	puts "| |_) | | | (_| | | | | (_| \\__ \\"
	puts "|_.__/|_|  \\__,_|_| |_|\\__,_|___/"
	puts

# For each brand in the data set:
  # Print the name of the brand
  # Count and print the number of the brand's toys we stock
  # Calculate and print the average price of the brand's toys
  # Calculate and print the total revenue of all the brand's toy sales combined
products_hash["items"].each do |toy|
	puts toy["brand"]
	puts "*" * 30
  number =
  average_product_price = toy["full-price"]
	#total_revenue =
end
