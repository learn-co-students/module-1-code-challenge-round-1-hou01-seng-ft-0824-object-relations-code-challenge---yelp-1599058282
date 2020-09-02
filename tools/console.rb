require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Customer.new("Wesley", "Faircloth")
c2 = Customer.new("Elon", "Musk")
c3 = Customer.new("George", "Washington")


r1 = Restaurant.new("Subway")
r2 = Restaurant.new("PizzaHut")
r3 = Restaurant.new("dee's")


rate1 = Review.new(c1, r3, 10)
rate2 = Review.new(c2, r2, 5)
rate3 = Review.new(c3, r1, 7)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line