class User < ActiveRecord::Base
    has_many :playlists
    has_many :music, through: :playlists
end