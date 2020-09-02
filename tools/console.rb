require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Customer<->Review<->Restaurant

# Primary Variables:
c = Customer.new("Bree", "Warren")
rs = Restaurant.new("Miyako")

# Association Variable:
rv = Review.new(c, rs, 4)

# Additional Variables:
c2 = Customer.new("Kevin", "Warren")
rv2 = Review.new(c, rs, 2)
c3 = Customer.new("Bree", "Thompson")

# Deliverables:

## Customer
# Customer#initialize - DONE
# Customer#given_name - DONE
# Customer#family_name - DONE
# Customer#full_name - DONE
# Customer.all - DONE
# Customer#restaurants - DONE
# Customer#add_review(restaurant, rating) - DONE
# Customer#num_reviews - DONE
# Customer.find_by_name(name) - DONE
# Customer.find_all_by_given_name(name) - DONE

## Restaurant
# Restaurant#initialize - DONE
# Restaurant#name - DONE
# Restaurant#reviews - DONE
# Restaurant#customers - DONE
# Restaurant#average_star_rating - DONE

## Review
# Review#initialize - DONE
# Review#rating - DONE
# Review.all - DONE
# Review#customer - DONE
# Review#restaurant - DONE

binding.pry
0 #leave this here to ensure binding.pry isn't the last line