class Cli
    attr_reader :current_user


    def create_user_music_interest
        if @current_user.user_music_interest == nil
            @current_user.user_music_interest = User_music_interest.create(:user_id => @current_user.id)
        end
        @current_user.user_music_interest
    end



    def saturn_image

        puts "
                 ,MMM8&&&.
            _...MMMMM88&&&&..._
         .::'''MMMMM88&&&&&&'''::.
        ::     MMMMM88&&&&&&     ::
        '::....MMMMM88&&&&&&....::'
           `''''MMMMM88&&&&''''`
                 'MMM8&&&'
      "
        puts "\n\n"
    end

    def noon
        noon = Time.now
        noon.change(hour:12)
    end

    def evening
        evening = Time.now
        evening.change(hour:17)
    end

    def welcome
        saturn_image
        puts "Please type in your username:"
        new_username = gets.strip
        new_user = User.create({name: new_username})
        @current_user = User.find_or_create_by(name: new_username)
        create_user_music_interest

        t = Time.now
        if t < noon
            puts "Good Morning, #{new_username}!"
        elsif t < evening && t > noon
            puts "Good Afternoon, #{new_username}!"
        else
            puts "Good Evening, #{new_username}."
        end
    end


    def main_menu
        prompt = TTY::Prompt.new
        selection = prompt.select("How may I assist you today?", ["New Music", "Preexisting Music", "Clear Music Tastes"])

        case selection
        when "New Music"
            new_music
        when "Preexisting Music"
            preexisting_music
        when "Clear Music Tastes"
            clear_music
        end
    end

    def new_music
        
    end

    def preexisting_music

    end

    def clear_music

    end
end