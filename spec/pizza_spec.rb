require 'rubygems'
require 'bundler/setup'
require 'rspec'
require_relative '../pizza'

describe Pizza::Pie do #in the Pizza module, Pie Class, do the following: 

end 

describe Pizza::Topping do #in the Pizza module, Topping Class, do the following:
	


	describe '.initalize' do
	# In RSpec, we use describe blocks to specify what we are testing. At the outer level, we describe the Pizza::Topping class, and within that, we describe the initialize method. The . indicates that this is a class method (since it is called directly off of the Pizza::Topping class: Pizza::Topping.new).
		it "sets the name of the topping" do
			#The first line we added is essentially the same code we would run in irb - we create a new Topping and pass the string 'olives' to set the @name. The second line is our expectation: we expect that topping.name will be equal to 'olives'.
			topping = Pizza::Topping.new('olives')

			expect(topping.name).to eq('olives')
		end




	end

end

# to run this script: bundle exec rspec spec/pizza_spec.rb