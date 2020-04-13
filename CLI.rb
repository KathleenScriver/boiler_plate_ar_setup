class Cli
    attr_reader :current_user

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
        new_user = User.create({username: new_username})
        @current_user = User.find_or_create_by(username: new_username)

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
            create_event
        when "Preexisting Music"
            view_calendar
        when "Clear Music Tastes"
            delete_event
        end
    end
end