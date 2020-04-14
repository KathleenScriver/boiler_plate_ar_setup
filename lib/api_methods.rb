require 'pry'
require 'rest-client'
require 'json'


response = RestClient.get("https://api.deezer.com/user/2529/playlists")
JSON.parse(response)
#binding.pry

#genre  https://api.deezer.com/genre
#playlists  https://api.deezer.com/user/2529/playlists


def genre_method
end

def artist_method
end

def song_method
end