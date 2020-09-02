require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("George","Washington")
c2 = Customer.new("Wesley","Faircloth")
c3 = Customer.new("George","Washington")

r1 = Restaurant.new("Papas pizza")
r2 = Restaurant.new("Pizza planet")
r3 = Restaurant.new("lil cheezers")

review1 = Review.new(c1, r1, 2.5)
review2 = Review.new(c2, r2, 5.0)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line