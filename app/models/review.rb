class Review
  
    attr_reader :customer, :restaurant, :rating

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

    def customer
        Customer.all.select do |c|
            c.full_name
        end
    end
    def restaurant
        Restaurant.all.select {|r| r.name}
    end

end