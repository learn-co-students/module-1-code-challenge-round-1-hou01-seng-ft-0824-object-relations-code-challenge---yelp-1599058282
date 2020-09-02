class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
   
    self.class.all << self
  end

  def review
    Review.all.select{ |rating| rating.customer == self}
  end

  def restaurants
    self.review.collect do | review |
      #binding.pry
      review.restaurant
  end    

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end
end
