class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end 

  def customers
    self.reviews.collect{|review| review.customer}
    #returns full customer instances
  end
  
  # def customer_names
  #   (self.customers.collect{|customer| customer.full_name}).uniq
  # end 
  # will return an array of full names of all customers who have reviewed a resttaurant

  def average_star_rating
    (self.reviews.sum{|review| review.rating}) / self.reviews.count
    #will only return integers
  end 

end
