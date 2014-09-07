class Plant

@@tallest = nil

	def initalize (name, height)
		@name = name 
		@height = height
		check_for_tallest 

end 
attr_reader :height #shortcut the same as the below 3 ines

#def height 
	#@height
#end 

def inspect 
	"#{height}-inch-tall #{@name}"

	def grow(inches)
		@height += inches # shortcut for the line below
		# @height = @height + inches 
	
	end 

	def self.tallest 
		@@tallest 
	end 

private 

	def check_for_tallest
		if @@tallest.nil? || @height > @@tallest.height 
			@@tallest = self
	end  
end