require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Billy", "Helm")
c2 = Customer.new("Josh", "Williams")
c3 = Customer.new("Ryan", "Belanger")
c4 = Customer.new("Pat", "Ant")
c5 = Customer.new("Billy", "Walter")

r1 = Restaurant.new("The Kirb")
r2 = Restaurant.new("Buffalo Wild Wings")

y1 = Review.new(c1, r1, 10)
y2 = Review.new(c1, r2, 6)
y3 = Review.new(c2, r1, 11)
y4 = Review.new(c2, r2, 7)
y5 = Review.new(c3, r1, 15)
y6 = Review.new(c4, r2, 8)
y7 = Review.new(c1, r1, 12)

c4.add_review(r1, 7)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
