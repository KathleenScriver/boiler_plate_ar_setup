require_relative 'config/environment'

puts "You're using Film Guide"
puts "What is your name?"
user_name = gets.chomp


user = User.create(name: user_name)
cli = Cli.new(user)
cli.welcome_user

binding.pry
