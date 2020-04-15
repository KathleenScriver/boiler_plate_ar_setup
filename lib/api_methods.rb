require 'pry'
require 'rest-client'
require 'json'

# response = RestClient.get("https://api.deezer.com/genre")
# JSON.parse(response)

#genre  https://api.deezer.com/genre
#artists https://developers.deezer.com/api/artist
#track https://developers.deezer.com/api/track 


def select_genre
    genre_hash = JSON.parse(RestClient.get("https://api.deezer.com/genre"))
    genre_array = genre_hash["data"]
   
    genre_list = (genre_array.map {|i| i["name"]}).first(10)
    delete_list = ["All", "Reggaeton", "Dance","Alternative", "Christian"]
    delete_list.each do |delete|
        genre_list.delete_at(genre_list.index(delete))
    end
    binding.pry
   
    prompt = TTY::Prompt.new 
    selection = prompt.select("Select Genre", genre_list)
    
    "#{genre_list}"
    
    case selection
    when "#{genre_list}"
         select_artist
    end
end



def select_artist
    puts "Select Artist"
    #if user_genre == "genre"
    
    #artist_hash = JSON.parse(RestClient.get("https://developers.deezer.com/api/artist"))
    #end
end

def select_song
    puts "Select Song"
end

#binding.pry