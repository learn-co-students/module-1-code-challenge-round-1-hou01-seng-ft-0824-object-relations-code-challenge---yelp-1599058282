require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new ("Charlie Mason")

rs1 = Restaurant.new ("Italianos") 

rv1 = Review.new (c1, rs1, 7)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

# I ran out of time to complete the challenge :(