class Customer
  attr_accessor :given_name, :family_name
  @@all = [] 

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self 
  end


  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all 
    @@all 
  end 

  def restaurants
    Review.all.collect do |review|
      review.restaurant
    end 
  end 

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end 

  def num_reviews
    Review.all.sum do |review|
      review.rating  
    end 
  end 

  def self.find_by_name(full_name)
    Customer.all.find do |customer|
      customer.family_name 
    end 

  end 

  def self.find_all_by_given_name(name)
    Customer.all.collect do |customer|
      customer.given_name 
  end 
end 
end
