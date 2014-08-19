#TEDDIT:  Strings - Student's File
#	Teddit is a Ruby text based news aggregator. Think Reddit in your terminal.
#	This exercise will be used throughout the ruby portion of this course. 
#	Each lesson we will incrementally build a news aggregator. 
#	Lesson 4 we will create a more dynamic Teddit, and pull the latest news stories from Mashable, Digg and Reddit. 
#	But until then we will hard code stories.


#This code along demonstrates how to work with strings. 
#Each version below, adds complexity to Teddit. Only run one version at a time so you can see the difference.


#Version 1 - Welcome the user to Teddit, print the first story to the terminal.
###########
###########


#Version 2 - Replace the story title and upvotes with variables.
###########
###########



#Version 3 - Add data type casting (fix casting issue).
###########
###########



#Version 4 - Use string interpolation and escape characters, polish the output.
###########
###########
def print_headline
	p "Welcome to Teddit a text based news aggregator. Get today\'s news tomorrow!"
end

def get_title
	print "enter a title: "
	gets.chomp
end

def show_story_line title, votes
	puts "Story #{title}, then eaten current upvotes: #{upvotes}"
end

print_headline

title = get_title
upvores = get_upvotes

show_story_line "hello title world", 4
show_story_line "hello title world", 5
show_story_line, 4


#Version 5 - Adding methods
###########
###########
