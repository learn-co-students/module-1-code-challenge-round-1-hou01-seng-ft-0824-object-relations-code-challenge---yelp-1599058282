class Customer
  attr_accessor :given_name, :family_name

  @@all =[]

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    self.class.all.push(self)
  end
  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def customer_reviews #i used so that i didnt have to write this code twice 
    Review.all.select{|review| review.customer == self}.collect{|review| review.restaurant}
  end 

  def restraunts
    self.customer_reviews.uniq
  end 

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end 

  def num_reviews
    customer_reviews.length
  end 

  def self.find_by_name(name)
    self.all.find{|customer| name.include? customer.family_name} 
  end

  def self.find_all_by_given_name(name)
    self.all.select{|customer| name.include? customer.family_name} 
  end
end 
