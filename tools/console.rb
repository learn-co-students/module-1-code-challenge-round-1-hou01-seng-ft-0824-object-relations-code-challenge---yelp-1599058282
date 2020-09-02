require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Customers 
c1 = Customer.new('bill','burns')
c2 = Customer.new('bill','montana')
c3 = Customer.new('bill','burns')

#Restaurants
r1 = Restaurant.new('Willies')
r2 = Restaurant.new('Jakey')

#Reviews
re1 = Review.new(c1,r1,8)
re2 = Review.new(c2,r1,2)
re3 = Review.new(c3,r1,5)
re4 = Review.new(c1,r2,10)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line