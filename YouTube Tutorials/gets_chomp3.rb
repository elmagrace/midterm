puts "What's your first name?"
first_name = gets.chomp.capitalize 

puts "How old are you?"
your_age = gets.chomp

puts "How many kids do you have?"
kid_amount = gets.chomp

puts "Are you male or female?"
male_female = gets.chomp

facebook_knows_all = Hash.new 

facebook_knows_all["first_name"] = first_name.capitalize 
facebook_knows_all["your_age"] = your_age
facebook_knows_all["kid_amount"] = kid_amount
facebook_knows_all["male_female"] = male_female

puts facebook_knows_all

$end