class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@ll
  end

  def reviews
    Review.all.select do |revs|
      revs.restaurant == self
    end
end

end
