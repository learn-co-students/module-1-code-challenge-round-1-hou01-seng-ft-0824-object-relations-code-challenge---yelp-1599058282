class Restaurant
  attr_reader :name, :rating

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    (Review.all.collect {|review|review.customer.full_name}).uniq
  end

  def average_star_rating
     (self.reviews.sum {|review| review.rating})/ self.reviews.length
  end

end
