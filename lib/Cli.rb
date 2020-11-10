require 'pry'
require_relative '../config/environment'

old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil

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
                menu.choice :Naughty, "Naughty"
                menu.choice :Knock_Knock, "Knock_Knock"
                menu.choice :Dad, "Dad"
            end
        else
            @choice = prompt.select "Choose your joke type" do |menu|
                menu.choice :Knock_Knock, "Knock_Knock"
                menu.choice :Dad, "Dad"
            end
        end
    end

    def all_jokes_of_selected_category
        Joke.where(category: @choice)
    end

    def extract_content
        all_jokes_of_selected_category.map {|joke| joke.content}
    end

    def pick_random_joke
        i = rand(0..extract_content.length - 1)
        extract_content[i]
    end

    def display_joke
        case @choice
        when "Naughty"
            puts pick_random_joke
        when "Knock_Knock"
            puts pick_random_joke
        when "Dad"
            puts pick_random_joke
        end
    end

    def start_app
        welcome_screen
        get_users_name
        welcome_user
        get_users_age
        select_joke_type
        display_joke
    end

end