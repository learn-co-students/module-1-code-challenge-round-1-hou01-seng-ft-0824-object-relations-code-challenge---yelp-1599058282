require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Customer.new("Cyrano", "De Bergerac")
c2 = Customer.new("Captain", "Quint")

r1 = Restaurant.new("Pappi O'Daniel's")

rev1 = Review.new(c1, r1, 4)
rev2 = Review.new(c1, r1, 4.5)
rev3 = Review.new(c2, r1, 3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line