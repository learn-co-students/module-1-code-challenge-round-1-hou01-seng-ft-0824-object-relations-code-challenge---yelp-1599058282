class Restaurant
  attr_reader :name, :review
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self 
    
  end
  
  def self.all
    @@all 
    
  end

  def self.average_star_rating
    sum = self.all.sum do |restaurant|
      restaurant.review
      total = self.all.count

      total / sum 
    end
    end

end
