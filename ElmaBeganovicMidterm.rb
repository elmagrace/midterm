# I am going to add a remote data source to pull Tweets from Twitter. 
# https://twitter.com 
#Retain user information to find influencers. 
#Find out user's preference for travel, fashion or beauty.
#Have the user listen to all of Twitter to see who is tweeting about travel, fashion, and beauty.  

require 'rest-client' 
require 'json'
require 'rubygems'
require 'tweetstream'
require 'twitter'

tracking_keywords = Array['bloggers', 'fashion', 'beauty']

# client = Twitter::REST::Client.new do |config|
TweetStream.configure do |config|
  config.consumer_key       = 'emU8LBenaLOoiYu3yCbyBKGjS'
  config.consumer_secret    = 'ImVvrjXJOxChxcc5srwQES74bj8eOSVucYm7Jp8vJ6lkzLQQor'
  config.oauth_token        = '2170596036-nJ3kLR8KRF23Ldv6kzckEl5gK11dSaHpJK4U9Gb'
  config.oauth_token_secret = 'KeaUr3NR4QZemgqiPKDMjM4cg3cWCt8aMCGhIxrqOWSt7'
  config.auth_method        = :oauth
end

class User
	def initialize (screen_name, twitter_followers)
	@screen_name = screen_name
	@twitter_followers = twitter_followers
	end 

def screen_name
	return @screen_name
end

def twitter_followers
	return @twitter_followers
	end
end 

user1 = User.new('ClubFashionista', 42000)
puts "Hello, we are #{user1.screen_name}, and we have #{user1.twitter_followers} followers on Twitter! "

print "What's your Twitter username?"
user_name = gets.chomp

print "And how many Twitter followers do you have?"
twitter_followers = gets.chomp

puts "So, your Twitter name is #{user_name}, and you have #{twitter_followers} followers. Great!"

puts "What lifestyle trend do you follow: fashion, beauty or travel? Choose your favorite!"
keyword = gets.chomp!

TweetStream::Client.new.track(keyword) do |status|
  puts "#{status.text}"
end


