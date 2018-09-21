class Movie < ActiveRecord::Base
    
    def self.all_ratings
        ratingsArr = Array.new
        self.select("rating").uniq.each{|rate| ratingsArr.push(rate.rating)}
        ratingsArr.sort.uniq
    end
end
