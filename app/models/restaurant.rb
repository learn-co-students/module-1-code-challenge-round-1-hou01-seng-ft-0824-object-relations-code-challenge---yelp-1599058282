class Restaurant
  attr_reader :name




  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self 
  end

  def self.all
    @@all
  end 


    def reviews

      Review.all.select do |restaurant|
        restaurant.resturant == self 
      end
    end 

    def customers
      review = Review.all.select do |restaurant|
        restaurant.resturant == self 
      end 
      review.all.collect do |customer|
        customer
      end 
      

    customer.uniq
    end 

    def average_star_rating 
      total = Review.all.sum do |rating|
        rating.rating == self 
      end 
      total / self.all.count
    end 





 








end
