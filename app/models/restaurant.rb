class Restaurant 

  attr_reader :name 

  def initialize(name) 
    @name = name 
  end

  def reviews 
    Review.all.select {|review| review.restaurant == self}
  end

  def customers 
    customer = self.reviews.map {|review| review.customer}
    customer.uniq
  end

  def average_star_rating
    total = self.reviews.sum {|review| review.rating }
    total / self.reviews.length 
  end

end