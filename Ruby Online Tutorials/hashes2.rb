facebook_knows_all = Hash.new 

puts "What's your first name?"
facebook_knows_all ["first_name"] = gets.chomp.capitalize

puts "How old are you?"
facebook_knows_all ["your_age"] = gets.chomp

puts "How many kids do you have?"
facebook_knows_all ["kid_amount"]= gets.chomp

puts "Are you male or female?"
facebook_knows_all ["male_female"] = gets.chomp

puts facebook_knows_all