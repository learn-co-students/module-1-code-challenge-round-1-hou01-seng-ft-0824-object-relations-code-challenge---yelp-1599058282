require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Customer.new("Payton","Gray")
c2 = Customer.new("Jack","Gray")
c3 = Customer.new("Sav","Robinson")

r1 = Restaurant.new("Chuys")
r2 = Restaurant.new("Chilis")
r3 = Restaurant.new("bww")

rev1 = Review.new(c1,r3,5)
rev2 = Review.new(c2,r2,3)
rev3 = Review.new(c3,r1,4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line