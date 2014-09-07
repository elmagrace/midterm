#Apartment class.
class Apartment
	attr_accessor :name, :sqft, :num_bedrooms, :num_bathrooms 

	def initialize(name, sqft, num_bathrooms, num_bedrooms)
		@name = name
		@sqft = sqft
		@num_bedrooms = num_bedrooms
		@num_bathrooms = num_bedrooms
	end 

end
