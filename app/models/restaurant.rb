class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |review| 
      #binding.pry
      review.restaurant == self
    end
  end

  def customers
    reviews.collect{|review| review.restaurant}.uniq
  end

  def average_star_rating
    sum = Review.all.sum{|review| review.rating}
    tot = reviews.count
    sum/tot
  end

end
