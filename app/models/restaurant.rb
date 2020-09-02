class Restaurant
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name

    self.class.all << self
  end

  # def self.all
  #   @@all
  # end

  def reviews
    Review.all.select do |r|
      r.restaurant == self
    # Review.all.select {|r|r.restaurant == self}.collect{|n|n.name}
    end
  end

  def customers
    Review.all.select {|c| c.customer == self}.uniq
  end

  def average_star_rating
    total = Review.all.sum{|r| r.rating}
    total / self.all.count
  end

  def self.all
    @@all
  end

end
