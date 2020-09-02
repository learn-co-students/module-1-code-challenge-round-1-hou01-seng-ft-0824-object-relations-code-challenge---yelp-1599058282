class Review
  @@all = []
  attr_reader :customer, :restaurant, :rating

  def initialize (customer, restaurant, rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating

    self.class.all.push(self)
  end 

  def self.all
    @@all
  end 


end