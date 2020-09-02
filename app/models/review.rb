class Review
      attr_accessor :customer, :restaurant, :rating, :review
 
      @@all = []
     
      def initialize(customer,restaurant,rating)
        @customer = customer
        @restaurant = restaurant 
        @rating = rating 
        self.class.all << self 
        
        
    end
    def self.all 
        @@all
        
    end
  
end