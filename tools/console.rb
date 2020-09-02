require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
c1 = Customer.new("Stephanie", "Segura")
c2 = Customer.new("Mario", "Segura")
c3 = Customer.new("Kayla", "Segura")
c4 = Customer.new("Catalina", "Peek")
c5 = Customer.new("Michael", "Peek")


r1 = Restaurant.new("Cheesecake Factory")
r2 = Restaurant.new("Some Other Place")
r3 = Restaurant.new("Olive Garden")
r4 = Restaurant.new("Fogo de Chao")

rev1 = Review.new(c1, r1, 4)
rev2 = Review.new(c2, r2, 1)
rev3 = Review.new(c3, r3, 2)
rev4 = Review.new(c4, r4, 5)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line