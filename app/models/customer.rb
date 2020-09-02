class Customer
  attr_accessor :given_name, :family_name
     @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    self.class.all << self 
  end

  def self.all
    @@all 
    end

  def full_name
    "#{given_name} #{family_name}"
  end

  def num_reviews
    self.all.collect do|review|
    review.customer 
    
    end

    def find_by_name
      self.all.select |given_name|
      given_name.given_name
      binding.pry 
    end
      
    end 

  
end
