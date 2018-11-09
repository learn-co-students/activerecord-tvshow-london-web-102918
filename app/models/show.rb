class Show < ActiveRecord::Base

def self.highest_rating
  # binding.pry
  # Show.find_by
  # Show.all.max_by {|show| show.rating}.rating
  Show.maximum(:rating)
end

def self.most_popular_show
  # binding.pry
  # Show.find_by
  # Show.all.max_by {|show| show.rating}.rating
  # Show.maximum('rating')
  Show.find_by rating: Show.highest_rating
end

def self.lowest_rating
  Show.minimum(:rating)
end

def self.least_popular_show
  Show.find_by rating: Show.lowest_rating
end

def self.ratings_sum
  Show.sum :rating
end

def self.popular_shows
  # binding.pry
  #Show.find_by rating:
  # Show.all.select{|show| show.rating > 5}
  Show.where(rating: 5..Show.highest_rating)
end

def self.shows_by_alphabetical_order
  # array = Show.all.sort_by{|show| show.name}
  # array
  Show.order(:name)
end

end
