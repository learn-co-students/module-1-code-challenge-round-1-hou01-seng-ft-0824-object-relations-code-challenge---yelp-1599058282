class Restaurant

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def reviews
    Review.all
  end

  def customers
    Customer.all.uniq
  end



end
