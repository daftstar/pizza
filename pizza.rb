module Pizza
  class Pie

  end

  class Topping
  	attr_accessor :name, :vegetarian
  # Instantiate a new topping.
  #
  # name - The String name of the topping.
  #
  # Returns a new Topping object.

  	def initialize(name, vegetarian: false)
  		@name = name
  		@vegetarian = vegetarian
  	end
  end
end



# We'll build a system for recording a pizza's toppings, and reporting back whether or not the pizza is vegetarian based on those toppings that were added. For the moment, we'll only build the underlying code - we won't worry about building a user interface for it quite yet.

