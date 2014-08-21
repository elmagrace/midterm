require 'json'
require 'rest-client'

def get_input
  gets.strip #chomp was also used..
end
 
def show_message message
  puts message
end
 
def show_new_story_nofitication story
  # story will be a hash (look at format below)
  puts "NEW STORY!! title: #{story[:title]}, with #{story[:upvotes]}. [category: #{story[:category]}]"
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
  response['hot'].map { |entry| #bug
 
  response['data']['children'].map do |child|
     story = {
        title:  entry['title'], #bug 
        category: child['channel']#bug
      }
 
     calculate_upvotes story
     show_new_story_nofitication story
  end
end
  
 
get_from_reddit