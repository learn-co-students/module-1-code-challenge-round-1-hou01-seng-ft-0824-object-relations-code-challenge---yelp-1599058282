require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer_1 = Customer.new("Abbosbek", "Muydinboev")
customer_2 = Customer.new("Elon", "Musk")
customer_3 = Customer.new("David", "Beckham")

restaurant_1 = Restaurant.new("La Piola")
restaurant_2 = Restaurant.new("Pasha")
restaurant_3 = Restaurant.new("Oasis Grills")

review_1 = Review.new(customer_1, restaurant_1, 4.8)
review_2 = Review.new(customer_2, restaurant_2, 5.0)
review_3 = Review.new(customer_3, restaurant_3, 4.6)

customer_1.add_review(restaurant_2, 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line