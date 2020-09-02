class Restaurant
  attr_reader :name 
  @@all = [] 

  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def reviews
    Review.all.select do |review|
      review.restaurant == self 
    end 
  end 

  def customers
   Review.all.collect do |review|
      review.customer 
    end 
  end 

  def self.all
    @@all 
  end 

  def average_star_rating 
    arr = Review.all.sum do |review|
      review.rating 

      total_count = self.all.count 

      arr/total_count
    end 
  end 







end
