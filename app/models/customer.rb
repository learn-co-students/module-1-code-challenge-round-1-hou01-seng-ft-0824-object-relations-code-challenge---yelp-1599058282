class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    self.class.all.push(self)
  end
  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def reviews
    Review.all.select{ |review| 
      review.customer == self
    }
  end
  def num_reviews
    self.reviews.length
  end
  def restaurants
    restaurants = self.reviews.collect{ |review| 
      review.restaurant
    }
    restaurants.uniq
  end

  def self.find_by_name(name)
    self.all.find{ |customer| 
      customer.full_name == name
    }
  end
  def self.find_all_by_given_name(name)
    self.all.select{ |customer| 
    customer.given_name == name
  }
  end

  #another method I made just to experiment
  def self.power_reviewer
    all_reviews = Review.all.collect{ |review| 
      review 
    }
    all_customers = all_reviews.collect{ |review| 
      review.customer}

    power_reviewers = all_customers.find_all{ |customer| 
      
      customer.num_reviews >= 3
    }
    power_reviewers_names = power_reviewers.collect{ |customer| 
      customer.full_name
    }
    power_reviewers_names.uniq
  end

end
