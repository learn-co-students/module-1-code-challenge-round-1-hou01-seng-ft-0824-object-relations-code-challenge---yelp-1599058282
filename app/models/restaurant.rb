class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select do |review|
      review.restaurant
    end
  end

  def customers
    self.reviews.collect {|review| review.customer}.uniq == self
  end

  def self.average_star_rating
    total_star_rating = Review.all.sum {|review| review.rating}
    total_star_rating / self.all.count
  end

  def self.all
    @@all
  end

end
