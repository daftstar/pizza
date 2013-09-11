module Pizza #this class creates a pizza

  class Pie
  	attr_accessor :toppings

  	#sets the argument as nil, if nothing is passeed in
  	def initialize(toppings = nil) 
  		if toppings
  			@toppings = toppings
  		else
  			@toppings = [Pizza::Topping.new('cheese')]
  		end


	  		# this also works toppings ||= [Pizza::Topping.new('cheese')]
	  		# this also works (but too much repetition) @toppings = toppings
  		 #@toppings = toppings || @toppings = [Pizza::Topping.new('cheese')]
  	end

  end




  class Topping #this class contains available toppings

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

