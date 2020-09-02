class Review
    attr_reader :customer, :restaurant
    attr_accessor :rating
   @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    
    def customer
         self.all.collect do |rev|
             rev.customer
         end
     end

     def restaurant
        self.all.collect do |rev|
            rev.restaurant
        end
     end
  
end