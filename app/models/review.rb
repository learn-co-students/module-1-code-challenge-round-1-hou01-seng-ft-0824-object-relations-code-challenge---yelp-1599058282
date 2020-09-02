class Review
  

    attr_reader :customer, :resturant, :rating
    @@all = []
    def initialize (customer,resturant,rating)
        @customer = customer
        @resturant = resturant
        @rating = rating 
        self.class.all << self 
    end
    def self.all
        @@all
    end 

    def rating
    end

    # def customer 

    #     Review.all.select do |reviews|
            
    #       reviews == self 
    #     end 
    #   end 

    #   def restaurant
    #     customer.collect do |resturants|
    #         resturants.resturant
    #     end 
    # end 

    


    
end  