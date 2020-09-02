require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("mike","archer")
c2 = Customer.new("jocelyn", "quintanilla")
c3 = Customer.new("mike","lipson")

r1 = Restaurant.new("Uchi")
r2 = Restaurant.new ("Pappadeaux")

rv1 = Review.new(c1,r1,5)
rv2 = Review.new(c2,r2,4)
rv3 = Review.new(c2,r2,3)
rv4 = Review.new(c1,r2,5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line