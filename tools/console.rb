require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
#customers
 c1 = Customer.new("baby", "pluto")
 c2 = Customer.new("sir", "cartiyair")
 c3 = Customer.new("Wunna", "gunna")
 c4 = Customer.new("key", "glock")

 #restauraunts
 r1 = Restaurant.new("Checkers")
 r2 = Restaurant.new("Mcdonalds")
 r3 = Restaurant.new("Chick Fila")
 r4 = Restaurant.new("Zaxbys")

 #reviews 
 rev1 = Review.new(c1, r2, 100) 
 rev2 = Review.new(c4, r1, 50)
 rev2 = Review.new(c3, r3, 75)
 rev4 = Review.new(c2, r4, 40)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line