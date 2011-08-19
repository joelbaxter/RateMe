class CreateRating < ActiveRecord::Base
    validates_presence_of :ratingVal
end
