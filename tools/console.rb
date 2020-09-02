require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Andy", "Raynold")
c2 = Customer.new("Britt", "Daniels")
c3 = Customer.new("Chase", "Adams")

r1 = Restaurant.new("Tree House")
r2 = Restaurant.new("Whiskey Cake")
r3 = Restaurant.new("Moxie's")

rev1 = Review.new(c1, r1, 4)
rev2 = Review.new(c2, r2, 5)
rev3 = Review.new(c3, r3, 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line