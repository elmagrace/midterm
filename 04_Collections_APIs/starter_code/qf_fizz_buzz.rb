# method to check for equality
def fizzbuzz(number)
  raise "Expected #{expected} to match #{actual}" unless expected == actual
end

# Write a program that prints the numbers from 1 to 100. 
# But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. 
# For numbers which are multiples of both three and five print “FizzBuzz”.
#
fizz_buzz = 0
until fizz_buzz < 100
	puts fizz_buzz
end 

def fizzbuzz number
	str = ''
	str += 'Fizz' if number % 3 == 0
	str += 'Buzz' if number % 5 == 0
	str = number if str.empty?
	str
end 
	

# Tests
assert_equal fizzbuzz(1), 1
assert_equal fizzbuzz(3), "Fizz"
assert_equal fizzbuzz(4), 4
assert_equal fizzbuzz(50), "Buzz"
assert_equal fizzbuzz(15), "FizzBuzz"
assert_equal fizzbuzz(5175), "FizzBuzz"

# uncomment this code when your tests pass
#1.upto(100) do |number|
#  puts fizzbuzz(number)
#end
