require 'pry'

class Cli

    def welcome_screen
    puts "        ██╗  ██╗██╗   ██╗███╗   ███╗ ██████╗ ██████╗     ███╗   ███╗███████╗██╗
        ██║  ██║██║   ██║████╗ ████║██╔═══██╗██╔══██╗    ████╗ ████║██╔════╝██║
        ███████║██║   ██║██╔████╔██║██║   ██║██████╔╝    ██╔████╔██║█████╗  ██║
        ██╔══██║██║   ██║██║╚██╔╝██║██║   ██║██╔══██╗    ██║╚██╔╝██║██╔══╝  ╚═╝
        ██║  ██║╚██████╔╝██║ ╚═╝ ██║╚██████╔╝██║  ██║    ██║ ╚═╝ ██║███████╗██╗
        ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝    ╚═╝     ╚═╝╚══════╝╚═╝" 
    end

    def get_users_name
        puts "What is your name?"
        @users_name = gets.chomp
    end
    

    def welcome_user
        puts "Welcome #{@users_name}!"
    end
    
    def get_users_age
        puts "☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺☺"
        puts "How old are you?"
        @users_age = gets.chomp
    end

    def select_joke_type
        prompt = TTY::Prompt.new

        if @users_age.to_i >= 18
            @choice = prompt.select "Choose your joke type" do |menu|
                menu.choice :Naughty, 1
                menu.choice :Knock_Knock, 2
                menu.choice :Dad, 3
            end
        else
            @choice = prompt.select "Choose your joke type" do |menu|
                menu.choice :Knock_Knock, 2
                menu.choice :Dad, 3
            end
        end
    end

    def display_joke
        case @choice
        when 1
            puts "naughty"
        when 2
            puts "knock_knock"
        when 3
            puts "dad joke"
        end
    end


    def start_app
        welcome_screen
        get_users_name
        welcome_user
        get_users_age
        select_joke_type
        display_joke
        binding.pry
    end

end