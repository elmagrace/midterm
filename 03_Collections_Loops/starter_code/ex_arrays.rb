# ====================================================================
# ====================================================================
# ====================================================================
# ====================================================================
def assert_equal(expected, actual)
  unless expected == actual
    abort "Expected #{expected} to match #{actual} on line #{caller.first.split(":")[1]}"
  end
end

def ___(*arguments)
  abort  "You have to fill in the blank on line #{caller.first.split(":")[1]}".center(100, "*")
end
# ====================================================================
# ====================================================================
# ====================================================================
# ====================================================================
# EVERYTHING ABOVE THIS LINE IS SETUP CODE, YOU DON'T NEED TO CHANGE IT
# ====================================================================
# ====================================================================
# ====================================================================

# INSTRUCTIONS:
# Go through each scenario below and fill in the blanks.

# MORE DETAILS:
# For each scenario, you will see three underscores (___) to indicate
# a blank that you need to fill in with some code
# After the scenario is complete, you will see another line that looks like:
# assert_equal <something>, <something else>
# That is a simple way to verify that you filled in the blank correctly,
# once you run the Ruby script in terminal

# STEPS:
# So, to do this exercise, simply:
# 1. Look at a scenario
# 2. Fill in the blank
# 3. Run the script (type `ruby ex_arrays.rb` in your terminal to do so)
# 4. The script will throw an assert error at the point where there is a failure
# 5. Pay close attention to the line number, then go back to the file and find that scenario
# 6. Fill in the blank correctly for that scenario (or try again)
# 7. Repeat until the script reaches the bottom and you see "YOU'RE DONE!"



# Create an empty array named categories using a literal
categories = []
assert_equal categories, []

# Create an empty array named categories using Array's #new method
<<<<<<< HEAD
categories = Array.new 
assert_equal categories, []

# Add 3 stories to the categories array. Each time using a different method.
categories.push ("Music") # ads to end of array
categories.unshift("Weather") # adds to start of array
categories. << "Florida" #
=======
categories = Array.new
assert_equal categories, []

# Add 3 stories to the categories array. Each time using a different method.
categories.push("Music") # adds to end of array
categories.unshift("Weather") # adds to start of array
categories << "Florida" #
>>>>>>> 5b0be148bbe9290f80814078229be44973534fe3
assert_equal ["Florida", "Music", "Weather"], categories.sort

# Ensure only unique categories get stored
categories << "Florida"
categories.uniq!
<<<<<<< HEAD
assert_equal ["Florida", "Music", "Weather"], categories.sort 
=======
assert_equal ["Florida", "Music", "Weather"], categories.sort
>>>>>>> 5b0be148bbe9290f80814078229be44973534fe3

# Write a conditional that adds "Family" to the
# category list if it includes both Shopping and Animals
categories << "Animals"
<<<<<<< HEAD

if categories.include("Animals") && categories.include("Shopping")
=======
if categories.include?("Animals") && categories.include?("Shopping")
>>>>>>> 5b0be148bbe9290f80814078229be44973534fe3
  categories << "Family"
end

assert_equal(false, categories.include?("Family"))

categories << "Shopping"

#repeat check here
<<<<<<< HEAD
if categories.include ("Animal") && categories.include ("Shopping")
=======
if categories.include?("Animals") && categories.include?("Shopping")
>>>>>>> 5b0be148bbe9290f80814078229be44973534fe3
  categories << "Family"
end

assert_equal(true, categories.include?("Family"))

# Print all of the Array elements as a comma separated string in alphabetical order
# persist the sorting of categories
<<<<<<< HEAD
assert_equal("Animals, Family, Florida, Music, Shopping, Weather", categories.sort!.join(".")
=======
assert_equal("Animals, Family, Florida, Music, Shopping, Weather", categories.sort!.join(', '))
>>>>>>> 5b0be148bbe9290f80814078229be44973534fe3
assert_equal(%w(Animals Family Florida Music Shopping Weather), categories)
# %w(Animals Family Florida Music Shopping Weather)
# ['Animals', 'Family', 'Florida', 'Music', 'Shopping', 'Weather']

# Remove the first category from the array and print it to the screen "First Category: Category here"
<<<<<<< HEAD
first_category = categories.first.shift #categories[0]
=======
first_category = categories.shift  #.first # categories[0]
>>>>>>> 5b0be148bbe9290f80814078229be44973534fe3
assert_equal("First Category: Animals", "First Category: #{first_category}")
assert_equal(5, categories.length) # get it's length

# Remove the newest category from the array, print it to the screen "Last Category: Category here"

last_category = categories.pop
assert_equal("Last Category: Weather", "Last Category: #{last_category}")
assert_equal(4, categories.count) # get it's length

# Write a conditional that clears the array if there are more than 5 categories and adds "Misc" to it.

if categories.length > 5 #get it's length
  categories.clear # empty the array
  categories << "Misc"
end

<<<<<<< HEAD
assert_equal(4, categories.length) # get it's length
=======
puts 'asserting'
assert_equal(4, categories.size) # get it's length
>>>>>>> 5b0be148bbe9290f80814078229be44973534fe3

categories << "Medicine"
categories << "Physics"

if categories.___ > 5 #get it's length
  categories.___ # empty the array
  categories.push "Misc"
end

assert_equal(1, categories.___) # get it's size
assert_equal(["Misc"], categories)

puts "YOU'RE DONE!"



# users = [
#     {:user => "Salman Ansari", :role => "Instructor"},
#     {:user => "Brooks Swinnerton", :role=> "TA"},
#     {:user => "Brian Fountain", :role => "TA"}
#   ]

#   ga_markets.each do |market|
#     puts market
#   end

#   ["NYC", "LA", "SYD", "LDN"].each do |market|
#     puts market
#   end



