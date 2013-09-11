require 'rubygems'
require 'bundler/setup'
require 'rspec'
require_relative '../pizza'



describe Pizza::Pie do #in the Pizza module, Pie Class, do the following: 

		#If a pizza has no toppings passed to it, the pizza should be defaulted with cheese. 	
		describe '.initalize' do
				it 'defaults the toppings to cheese only, if the pizza has no toppings' do
			  pizza = Pizza::Pie.new

			  expect(pizza.toppings.size).to eq(1)
			  expect(pizza.toppings.first.name).to eq('cheese')
				end
			end


		#Checks if the the toppings passed to the pizza do in fact show up on the pizza	
		describe '.initalize' do
			it 'records all of the toppings' do
				toppings = [
					Pizza::Topping.new('mushrooms', vegetarian: true),
					Pizza::Topping.new('pepperoni')
				]
			pizza = Pizza::Pie.new(toppings)

			expect(pizza.toppings).to eq(toppings)
			end
		end


end 

describe Pizza::Topping do #in the Pizza module, Topping Class, do the following:
	
	# In RSpec, we use describe blocks to specify what we are testing. At the outer level, we describe the Pizza::Topping class, and within that, we describe the initialize method. The . indicates that this is a class method (since it is called directly off of the Pizza::Topping class: Pizza::Topping.new).
	describe '.initalize' do


		# This test creates a topping object called 'bell pepper and assigns as true'
		# the newly created topping object called 'topping' must match the expect object.vegetarian name
			
		it "sets whether or not the topping is vegetarian" do
			topping = Pizza::Topping.new('bell peppers', vegetarian: true)
			
			expect(topping.vegetarian).to be_true # this checks for literal truthyness
		end



		it "sets the name of the topping" do
			#The first line we added is essentially the same code we would run in irb - we create a new Topping and pass the string 'olives' to set the @name. The second line is our expectation: we expect that topping.name will be equal to 'olives'.
			topping = Pizza::Topping.new('olives', vegetarian: true)

			expect(topping.name).to eq('olives')
		end
	end

end

# to run this script: bundle exec rspec spec/pizza_spec.rb
# run this within the root directory