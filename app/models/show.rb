class Show < ActiveRecord::Base
    def self.highest_rating
        maximum(:rating)
    end

    def self.most_popular_show
        find_by maximum(:rating)
    end

    def self.lowest_rating
        minimum(:rating)
    end

    def self.least_popular_show
        find_by(:rating => lowest_rating)
    end

    def self.ratings_sum
        sum(:rating)
    end

    def self.popular_shows
        where("rating > 5") 
    end

    def self.shows_by_alphabetical_order
        order(:name)
    end

end