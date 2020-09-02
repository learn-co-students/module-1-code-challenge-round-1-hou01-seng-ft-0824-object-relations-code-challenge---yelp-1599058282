class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    reviews.collect{|review| review.customer}
  end 

  def average_star_rating
    (reviews.collect{|review| review.rating}.sum)/reviews.length 
  end   
end
