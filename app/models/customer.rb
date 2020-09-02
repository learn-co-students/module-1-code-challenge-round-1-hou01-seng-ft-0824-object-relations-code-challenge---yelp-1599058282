class Customer
  attr_accessor :given_name, :family_name, :full_name

  @@all =[]
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    self.class.all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  # def self.all
  #   @@all
  # end

  def restaurants
    Review.all.select {|r|r.customer == self}
  end

  def add_review(restaurant,rating)
    Review.new(self,restaurant,rating)
  end

  def num_reviews
    # Reviews.all.select |r|
    #   r.customer == self
    #   total.sum
    # end
    self.all.count
  end

  def self.all
    @@all
  end
end
