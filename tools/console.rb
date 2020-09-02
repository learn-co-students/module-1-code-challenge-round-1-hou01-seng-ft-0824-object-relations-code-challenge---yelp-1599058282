require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
c1 = Customer.new("Elon","Musk")
c2 = Customer.new("Bill","Gates")
c3 = Customer.new("Steve","Jobs")

r1 = Restaurant.new("Tgif")
r2 = Restaurant.new("Applebees")
r3 = Restaurant.new("Ihop")

v1 = Review.new(c1,r2,5)
v2 = Review.new(c2,r3,2)
v3 = Review.new(c3,r1,2)

binding.pry




0 
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#leave this here to ensure binding.pry isn't the last line