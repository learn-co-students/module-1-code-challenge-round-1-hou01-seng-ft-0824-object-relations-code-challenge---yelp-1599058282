require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1 = Customer.new("Walid", "Younis")
c2 = Customer.new("bill", "wash")
c3 = Customer.new("andy", "reid")

r1 = Restaurant.new("tonys pizza")
r2 = Restaurant.new("Chama Guacha")
r3 = Restaurant.new("Bdubs")


re1 = Review.new(c1,r2,10)
re2 = Review.new(c1,r1,5)
re3 = Review.new(c2,r3,3)
re2 = Review.new(c2,r3,7)
re3 = Review.new(c3,r1,3)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line