class Cli
    attr_reader :user
    def initialize (user)
        @user = user
    end

    def welcome_user
        puts "Welcome #{user.name}!"
        app_start
    end

    def app_start
        puts "Which type of movie would you like to watch, Comedy, Action, Drama, or Horror?"
        user_choice = gets.chomp.downcase
        genre_choices(user_choice)
end

    def genre_choices(choice)
        if choice == 'comedy'
        puts "Sure, it's important to laugh! Choose one of these knee-slappers to learn more."
        #LIST OF COMEDY OPTIONS

        elsif choice == 'drama'
        puts "In the mood for somethinig serious, huh? Choose one of the following to learn more."
        #LIST OF COMEDY OPTIONS

        elsif choice == 'horror'
        puts "Feeling brave? Turn the lights our and choose one these horror favorites!"
        #LIST OF HORROR OPTIONS

        elsif choice == 'action'
        puts "I knew you were a thrill seeker! Choose one these options to get your fill of car chases, explosions, and more!"
        #LIST OF ACTION OPTIONS

        else 
            puts "Not familiar with that genre. Try another"
            app_start
        end
    end
end