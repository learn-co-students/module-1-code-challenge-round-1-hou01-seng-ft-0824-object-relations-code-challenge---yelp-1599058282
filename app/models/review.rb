class Review
    attr_reader :customer, :restaurant, :rating
    @@all = []
  
    def initialize(customer, restaurant, rating)
      @customer = customer
      @restaurant  = restaurant
      @rating = rating

      self.class.all << self
    binding_pry
    0
    end

    def self.all
        @@all
    end
end