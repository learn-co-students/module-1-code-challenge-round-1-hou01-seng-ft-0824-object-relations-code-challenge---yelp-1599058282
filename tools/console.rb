require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Begin Test Variables
c1 = Customer.new("Stephen", "Anderson")
c2 = Customer.new("Ben", "Looper")
c3 = Customer.new("Mike", "Archer")
c4 = Customer.new("Mike", "Jordan")

r1 = Restaurant.new("Chili's")
r2 = Restaurant.new("Olive Garden")
r3 = Restaurant.new("Outback")

rev1 = Review.new(c3,r1,9)
rev2 = Review.new(c1,r2,5)
rev3 = Review.new(c2,r3,3)
rev4 = Review.new(c1,r3,7)
rev4 = Review.new(c1,r3,8)
# End Test Variables

binding.pry
0 #leave this here to ensure binding.pry isn't the last line