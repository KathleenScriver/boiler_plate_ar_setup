class Music <  ActiveRecord::Base
    has_many :user_music_interests
    has_many :users, through: :user_music_interests
end
