class Customer
  attr_accessor :given_name, :family_name, :full_name


  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @full_name == full_name
    self.class.all << self 
  end


  def self.all
    @@all
  end 



  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants

    resturant = Review.all.select do |customer|
     
      customer.resturant
    end 
    allresturants = resturant.collect do |resturants|
      resturants.resturant.name
    end 
    allresturants.uniq

  end 

  def add_review(resturant,rating)
    Review.new(self,resturant,rating)
  end 

  def num_reviews
    total = Review.all.select do |customer|
      customer.customer == self  
    end 
  end 

  def self.find_by_name (name)
    Customer.all.find do |fullname|
      fullname.full_name = name
    end 

  end 

  def self.find_all_by_given(name)
    findbyName = Customer.all.find do |fullname|
      fullname.full_name = name
    end 
    findbyName.collect do |fullName|
      fullName.full_name = name
    end 


  end 





  




















end
