class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all.push(self)
  end

  def reviews
    Review.all.select { |review| review.restaurant == self}
  end 

  def customers 
    self.reviews.collect{ |review| review.customer}.uniq
  end 

  def average_star_rating
    (self.reviews.sum { |review| review.rating}) / (self.reviews.count)
  end 
  
  def self.all
    @@all
  end 
end
