
require 'pry'


class Music <  ActiveRecord::Base
    has_many :playlists
    has_many :users, through: :playlists

    

   
    #binding.pry
    # def create_artist
    # end
end
