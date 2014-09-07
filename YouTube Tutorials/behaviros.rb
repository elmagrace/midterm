#create a simple array
array =  [1,2,3,4,5]

#iterate through each value 
array.each {|num| puts num * 20}
puts num
# You're gonna have a bad time
#plays nice with variable outside 
x = 2 
array.each { |num| puts num * 20 + x }

# other handy ones
10.times { puts "This class is awsome" }

1.upto (10) { |num| puts "#{num} it is!" }

10.downto(1) do |num| 
	puts "#{num}!"
	sleep 1
end 
puts "Happy New Year!"

#return values

# #map runs a calculation on data
my_array = [1,2,3,4,5,6,7,8,9,10]
my_array.map {|num| num * 10}
my_array.find {|i| i == 5 }
#same as deect
my_array.find_all {|i| i % 3 == 0 }

my_array.reject {|i| i % 3 == 0}

my_array.any? {|i| i % 3 == 0}