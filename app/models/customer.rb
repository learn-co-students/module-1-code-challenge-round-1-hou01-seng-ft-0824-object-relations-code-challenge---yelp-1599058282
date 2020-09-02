class Customer 
  
  attr_accessor :given_name, :family_name
  @@all = [] 

  def initialize(given_name, family_name)
    @given_name = given_name 
    @family_name = family_name 
    self.class.all << self 
  end

  def full_name 
    "#{self.given_name} #{self.family_name}"
  end

  def self.all 
    @@all 
  end 

  def reviews
    Review.all.select {|review| review.customer == self }
  end 

  def restaurants
    restaurants = self.reviews.map {|review| review.restaurant }
    restaurants.uniq 
  end

  def add_review(restaurant, rating=0)
    Review.new(self, restaurant, rating)
  end

  def num_reviews 
    self.reviews.count 
  end

  def self.find_by_name(name)
    self.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_given_name(name)
    self.all.find_all {|customer| customer.given_name == name}
  end

end