class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    self.class.all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    Review.all.select{|review| review.customer == self}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(restaurant, self, rating)
  end

  def num_reviews
    Review.all.select{|review| review.customer == self}.count
  end

  def self.find_by_name(name)
    self.all.find{|x| x.given_name == name[0...name.index(" ")] && x.family_name == name[name.index(" ")+1...name.length]}

  end

  def self.find_all_by_given_name(name)
    self.all.select{|x| x.given_name == name[0...name.index(" ")] && x.family_name == name[name.index(" ")+1...name.length]}

  end




end
