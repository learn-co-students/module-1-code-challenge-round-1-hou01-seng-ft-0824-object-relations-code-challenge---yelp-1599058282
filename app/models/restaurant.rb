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
    Review.all.select {|review| review.restaurant == self}
  end 

  def customers
    reviews.map {|review| review.customer}.uniq
  end 

  def average_star_rating
    total_stars = reviews.sum {|review| review.rating}
    total_stars / reviews.count
  end

end
