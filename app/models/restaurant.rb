class Restaurant

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map {|review| review.customer}.uniq
  end

  def ratings
    self.reviews.map {|review| review.rating}
  end

  def average_star_rating
    self.ratings.sum / self.ratings.count
  end

end
