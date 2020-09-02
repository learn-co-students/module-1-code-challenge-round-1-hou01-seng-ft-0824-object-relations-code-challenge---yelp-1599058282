class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
    #went into Restaurant class and called customers method
    Restaurant.customers.select {|customer| customer.review == self}
  end

  def add_review(customer, restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    Review.all.select {|review| review.customer == self}
  end

  def self.find_by_name
    #I did not get to test this one, since I was running out of time
    self.full_name.find do |full_name|
      full_name.self
    end
  end

  def self.find_all_by_given_name
    self.find_by_name.select do |full_name|
      full_name.given_name
    end
  end

  def self.all
    @@all
  end

end
