require 'pry'
require 'rest-client'
require 'json'
require_relative 'music.rb'

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
    #binding.pry
   
    prompt = TTY::Prompt.new 
    selection = prompt.select("Select Genre", genre_list)
    
    "#{genre_list}"
    
    case selection
    when "#{genre_list}"
         select_artist
    end
end



def select_artist
    #binding.pry
    pop_artist_list = MUSIC[0][:pop_artists]
    rap_hip_hop_artists_list = MUSIC[2][:rap_hip_hop_artists]
    rock_artists_list = MUSIC[4][:rock_artists]
    rnb_artists_list = MUSIC[6][:rnb_artists]
    electro_artists_list = MUSIC[8][:electro_artists]
   
    all_artists = pop_artist_list, rap_hip_hop_artists_list, 
    rock_artists_list, rnb_artists_list, electro_artists_list
    
    prompt = TTY::Prompt.new 
    selection = prompt.select("Select Artist", pop_artist_list, rap_hip_hop_artists_list, 
        rock_artists_list, rnb_artists_list, electro_artists_list)
        
        #"#{genre_list}"
       # select_genre

    case selection
    when  "Pop" == TRUE then pop_artist_list
         
        select_song

    # when rap_hip_hop_artists_list
    #     rap_hip_hop_artists_list

    # when rock_artists_list
    #     rock_artists_list

    # when rnb_artists_list
    #     rnb_artists_list

    # when electro_artists_list
    #     electro_artists_list
 
    end
    
    
    
end

def select_song
    puts "Select Song"
end

MUSIC = 
[
{:pop_artists => ["Dua Lipa", "The Weeknd", "Doja Cat", "Lady Gaga", "Billie Eilish"]},
{:pop_songs => [{"Dua Lipa" => ["Don't Start Now","Physical","Beak My Heart"]},
{"The Weeknd" => ["Blinding Lights","In Your Eyes","After Hours"]},
{"Doja Cat" => ["Say So","Boss Bitch","Like That"]},
{"Lady Gaga" => ["Stupid Love","Shallow","Bad Romance"]}, 
{"Billie Eilish" => ["everything i wanted","bad guy","No Time To Die"]}]},


{:rap_hip_hop_artists => ["Roddy Rich", "Drake", "Travis Scott", "BROCKHAMPTON" , "Lil Uzi Vert"]},
{:rap_hip_hop_songs => [{"Roddy Rich" => ["The Box","High Fashion (feat. Mustard)", "Start Wit Me (feat. Gunna)"]},
{"Drake" => ["Life Is Good (feat. Future)", "Toosie Slide", "Mob Ties"]},
{"Travis Scott" => ["HIGHEST IN THE ROOM", "Can't Say","Sicko Mode"]}, 
{"BROCKHAMPTON" => ["Sugar","Gold", "Sweet"]}, 
{"Lil Uzi Vert" => ["Pop", "P2", "Futsal Shuffle 2020"]}]},



{:rock_artists => ["Twenty One Pilots", "Machine Gun Kelly", "Imagine Dragons", "Oliver Tree" , "The Killers"]},
{:rock_songs => [{"Twenty One Pilots" => ["Stressed Out","Level of Concern", "Ride"]},
{"Machine Gun Kelly" => ["I Think I'm OKAY","Candy","Home"]},
{"Imagine Dragons" => ["Believer","Thunder","Bad Liar"]},
{"Oliver Tree" => ["Alien Boy","Let Me Down","Miracle Man"]}, 
{"The Killers" => ["Mr.Brightside","When You Were Young","Caution"]}]},

{:rnb_artists => ["Doja Cat", "PARTYNEXTDOOR", "The Weeknd", "Khalid" , "6lack"]},
{:rnb_songs => [{"Doja Cat" => ["Juicy", "Like That (feat. Gucci Mane)", "Say So"]},
{"PARTYNEXTDOOR" => ["LOYAL (feat. Drake", "SPLIT DECISION", "BELIEVE IT"]},
{"The Weeknd" => ["Snowchild", "The Morning","Same Old Song"]}, 
{"Khalid" => ["Know Your Worth", "Better", "Location"]}, 
{"6lack" => ["Pretty Little Fears (feat. J. Cole)", "East Atlanta Love Letter", "Balenciaga Challenge"]}]},

{:electro_artists => ["KSHMR" , "ILLENIUM", "KAAZE", "Flux Pavilion", "Diskord"]},
{:electro_songs => [{"KSHMR" => ["My Best Life","Alone","Power"]},
{"ILLENIUM" => ["Takeaway","In Your Arms","Feel Good"]},
{"KAAZE" => ["I Should Have Walked Away","Devil Inside Me","This Is Love"]},
{"Flux Pavilion" => ["Savage","I Can't Stop","Room to Fall"]},
{"Diskord" => ["Beggers","U&I","Blood Brother"]}]}
]

#binding.pry