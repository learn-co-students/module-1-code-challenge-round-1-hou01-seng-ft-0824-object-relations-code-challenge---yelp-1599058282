require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Mac", "Miller")
c2 = Customer.new("Leo", "DiCaprio")
c3 = Customer.new("Hugo", "Rodriguez")

r1 = Restaurant.new("Hells Kitchen")

rev1 = Review.new(c2, r1, 5)
rev2 = Review.new(c1, r1, 3)
rev3 = Review.new(c3, r1, 4)
rev4 = Review.new(c2, r1, 1)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line