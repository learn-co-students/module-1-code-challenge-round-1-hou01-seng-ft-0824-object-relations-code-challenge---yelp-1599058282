require 'pry'
class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
  end
  # binding.pry
  # 0
 def self.all
  @@all
 end
end
