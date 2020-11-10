class Cli

    

    def get_users_name
        puts "What is your name?"
        @users_name = gets.chomp
    end
    

    def welcome_user
        puts "Welcome #{@users_name}!"
    end
    
    def get_users_age
        puts "How old are you?"
        @users_age = gets.chomp
    end

    def start_app
        get_users_name
        welcome_user
        get_users_age
    end

end