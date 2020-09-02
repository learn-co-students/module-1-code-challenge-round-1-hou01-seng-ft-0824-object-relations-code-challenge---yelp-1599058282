class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all.push(self)
  end
  def self.all
    @@all
  end

  def reviews
    Review.all.select{ |review| 
      review.restaurant == self
    }
  end
  def customers
    self.reviews.collect{ |review| 
      review.customer 
    }
  end

  def average_star_rating
    average = (self.reviews.collect{|review| review.rating}).sum / self.reviews.length
    # "#{self.name} has an average of #{average} stars."
  end

  #this is me trying something outside of the deliverables
  def self.top_rated
    top_reviews = Review.all.find_all{ |review| 
      review.restaurant.average_star_rating >= 4.0
    }
    top_restaurants = top_reviews.collect{|review| 
      review.restaurant
    }
    top_restaurants_names = top_restaurants.collect{|restaurant| 
      restaurant.name
    }
    top_restaurants_names.uniq
  end

  

end