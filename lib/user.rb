class User < ActiveRecord::Base
    has_many :user_music_interests
    has_many :music, through: :user_music_interests
end