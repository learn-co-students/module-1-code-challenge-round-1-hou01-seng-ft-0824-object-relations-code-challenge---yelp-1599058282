require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
alex = Customer.new("Alex", "Mata")
karo = Customer.new("Karo", "Cantu")
annie = Customer.new("Annie", "Huynh")

buca = Restaurant.new("Buca di Beppo")
rudz = Restaurant.new("Rudyard's")
tapatia = Restaurant.new("La Tapatia")

review1 = Review.new(alex, rudz, 4)
review2 = Review.new(karo, tapatia, 5)
review3 = Review.new(annie, rudz, 3)
review4 = Review.new(alex, tapatia, 5)
review5 = Review.new(alex, buca, 3)
review6 = Review.new(annie, tapatia, 4)
review7 =Review.new(karo, rudz, 4)

binding.pry
puts "Thanks for using not-Yelp!" #leave this here to ensure binding.pry isn't the last line