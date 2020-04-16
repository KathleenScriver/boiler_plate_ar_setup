require 'pry'
require 'rest-client'
require 'json'



    #binding.pry
   def select_music
    genre_hash = JSON.parse(RestClient.get("https://api.deezer.com/genre"))
    genre_array = genre_hash["data"]
    genre_list = (genre_array.map {|i| i["name"]}).first(10)
    delete_list = ["All", "Reggaeton", "Dance","Alternative", "Christian"]
    delete_list.each do |delete|
        genre_list.delete_at(genre_list.index(delete))
    end

    prompt_genre_pop = TTY::Prompt.new 
    prompt_pop = TTY::Prompt.new 
    selection = prompt_genre_pop.select("Select Genre", genre_list)
    
    
    prompt_genre_rap_hip_hop = TTY::Prompt.new 
    prompt_rap_hip_hop  = TTY::Prompt.new  
  

    prompt_genre_rock = TTY::Prompt.new 
    prompt_rock  = TTY::Prompt.new  

    prompt_genre_rnb = TTY::Prompt.new 
    prompt_rnb = TTY::Prompt.new  

    prompt_genre_electro = TTY::Prompt.new 
    prompt_electro = TTY::Prompt.new  
   
    
#"#{genre_list}"
    case selection
    when "Pop"
    prompt_pop.select("Select Artist", pop_artist_list)
        puts "Select Artist"
        pop_artist_list
    when "Rap/Hip Hop"
    prompt_genre_rap_hip_hop.select("Select Genre", genre_list[1])
    prompt_rap_hip_hop.select("Select Artist", rap_hip_hop_artists_list)
        rap_hip_hop_artists_list
    when "Rock"
    prompt_genre_rock.select("Select Genre", genre_list[2])
    prompt_rock.select("Select Artist", rock_artists_list)
    rock_artists_list
    when "R&B"
    prompt_genre_rock.select("Select Genre", genre_list[3])
    prompt_rock.select("Select Artist", rnb_artists_list)
    rnb_artists_list 
    when "Electro"
    prompt_genre_rock.select("Select Genre", genre_list[4])
    prompt_rock.select("Select Artist", electro_artists_list)
    electro_artists_list 
    end
   
end

def pop_artist_list
    array = MUSIC[0][:pop_artists]
    array.map do |songs|
       #binding.pry
    songs
    end
    
end

def rap_hip_hop_artists_list
    array = MUSIC[2][:rap_hip_hop_artists]
    array.map do |songs|
       #binding.pry
    songs
    end
end

def rock_artists_list
    array = MUSIC[4][:rock_artists]
    array.map do |songs|
       #binding.pry
    songs
    end
end

def rnb_artists_list
    array = MUSIC[6][:rnb_artists]
    array.map do |songs|
       #binding.pry
    songs
    end
end

def electro_artists_list
    array = MUSIC[8][:electro_artists]
    array.map do |songs|
       #binding.pry
    songs
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

pop_artist_list = MUSIC[0][:pop_artists]
    rap_hip_hop_artists_list = MUSIC[2][:rap_hip_hop_artists]
    rock_artists_list = MUSIC[4][:rock_artists]
    rnb_artists_list = MUSIC[6][:rnb_artists]
    electro_artists_list = MUSIC[8][:electro_artists]

#binding.pry