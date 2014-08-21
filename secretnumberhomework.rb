puts "Dear player, welcome to the Secret Number Game!"

designer_name = "Elma Beganovic"
puts "This game was created by #{designer_name}!"

puts "What is your name?"
name = gets.chomp.capitalize
puts 'clear' 
puts "Hello #{name}! How are you?"
puts "Guess a number between 1 and 10! You only have 3 tries!"

number_of_guesses = 3

puts "You have #{number_of_guesses} guesses left!"

secret_number = 4

puts "What is your first guess?"

loop do 
	guess = gets.to_i
	number_of_guesses -= 1
	puts 'clear'
	if guess == secret_number
		puts "Congratulations, you win!"
		break 
		
elsif guess != secret_number && number_of_guesses != 0

if guess < secret_number 
puts "Try again with a higher number! Number of guesses left: #{number_of_guesses}!"
elsif guess > secret_number 
puts "Try again with a lower number! Number of guesses left: #{number_of_guesses}!"
end

else
puts "You lost! Game over! #{secret_number} is the secret number!"
break
end 

end 