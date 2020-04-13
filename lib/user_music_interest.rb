class userMusicInterest < ActiveRecord::Base
    belongs_to :user
    has_many :music

end
