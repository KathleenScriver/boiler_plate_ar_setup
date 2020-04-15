class Music <  ActiveRecord::Base
    has_many :playlists
    has_many :users, through: :playlists

    MUSIC = [
    {:genre => "Pop"}, {:pop_artists => 
    [{"Dua Lipa" => ["Don't Start Now","Physical","Beak My Heart"]},
    {"The Weeknd" => ["Blinding Lights","In Your Eyes","After Hours"]},
    {"Doja Cat" => ["Say So","Boss Bitch","Like That"]},
    {"Lady Gaga" => ["Stupid Love","Shallow","Bad Romance"]}, 
    {"Billie Eilish" => ["everything i wanted","bad guy","No Time To Die"]}]},

    {:genre => "Rap/Hip Hop"}, {:rap_hip_hop_artists => 
    [{"Roddy Rich" => ["The Box","High Fashion (feat. Mustard)", "Start Wit Me (feat. Gunna)"]},
    {"Drake" => ["Life Is Good (feat. Future)", "Toosie Slide", "Mob Ties"]},
    {"Travis Scott" => ["HIGHEST IN THE ROOM", "Can't Say","Sicko Mode"]}, 
    {"BROCKHAMPTON" => ["Sugar","Gold", "Sweet"]}, 
    {"Lil Uzi Vert" => ["Pop", "P2", "Futsal Shuffle 2020"]}]},


    {:genre => "Rock"}, {:rock_artists => 
    [{"Twenty One Pilots" => ["Stressed Out","Level of Concern", "Ride"]},
    {"Machine Gun Kelly" => ["I Think I'm OKAY","Candy","Home"]},
    {"Imagine Dragons" => ["Believer","Thunder","Bad Liar"]},
    {"Oliver Tree" => ["Alien Boy","Let Me Down","Miracle Man"]}, 
    {"The Killers" => ["Mr.Brightside","When You Were Young","Caution"]}]},

    {:genre => "R&B"}, {:rnb_artists => 
    [{"Doja Cat" => ["Juicy", "Like That (feat. Gucci Mane)", "Say So"]},
    {"PARTYNEXTDOOR" => ["LOYAL (feat. Drake", "SPLIT DECISION", "BELIEVE IT"]},
    {"The Weeknd" => ["Snowchild", "The Morning","Same Old Song"]}, 
    {"Khalid" => ["Know Your Worth", "Better", "Location"]}, 
    {"6lack" => ["Pretty Little Fears (feat. J. Cole)", "East Atlanta Love Letter", "Balenciaga Challenge"]}]},

    {:genre => "Electro"}, {:electro_artists => 
    [{"KSHMR" => ["My Best Life","Alone","Power"]},
    {"ILLENIUM" => ["Takeaway","In Your Arms","Feel Good"]},
    {"KAAZE" => ["I Should Have Walked Away","Devil Inside Me","This Is Love"]},
    {"Flux Pavilion" => ["Savage","I Can't Stop","Room to Fall"]},
    {"Diskord" => ["Beggers","U&I","Blood Brother"]}]}
    ]

    
    # def create_artist
    # end
end
