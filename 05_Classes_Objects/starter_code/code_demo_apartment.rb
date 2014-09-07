#Explaining classes, objects, attr_accessor & load paths. 
#TIME: 30 min


class Apartment 
	attr_accessor :name, :rent, :sqft, :num_bedrooms, :num_bathrooms

	def initialize (name, rent, sqft, num_bathrooms, num_bedrooms)
		@name = name
		@rent = rent
		@sqft = sqft
		@num_bedrooms = num_bedrooms
		@num_bathrooms = num_bedrooms
		@renters = []
	end 

	def occupied?
		@renters.any? 
	end

end
# west_vil_apt = Apartment.new('West Vil Loft', 99999999, 999, 0.5, 2)
# west_vil_apt.occupied?
# west_vil_apt.renters.any?