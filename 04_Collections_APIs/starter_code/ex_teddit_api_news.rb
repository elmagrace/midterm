# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'rest-client'
require 'json'

def get_input
  gets.strip #chomp was also used..
end
 
def show_message message
  puts message
end
 
def calculate_upvotes story
  story[:upvotes] = 1
  if story[:title].downcase.include?('cat')
    story[:upvotes] *= 5
  elsif story[:title].downcase.include?('bacon')
    story[:upvotes] *= 8
  end
 
  story[:upvotes] *= 3 if story[:category].downcase == "food"
 
end

def get_from_reddit
  response = JSON.load( RestClient.get('http://www.reddit.com/.json') )
 
  response['data']['children'].map do |child|
     story = {
        title:  child['data']['title'],
        category: child['data']['subreddit']
      }
 
     calculate_upvotes story
     show_new_story_nofitication story
  end
end
 
 
 
get_from_mashable 

