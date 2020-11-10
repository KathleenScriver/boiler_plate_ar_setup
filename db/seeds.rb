require 'pry'

Favorite.destroy_all
User.destroy_all
Joke.destroy_all

user1 = User.create name: "Colter", age: 25
user2 = User.create name: "Chris", age: 35
user3 = User.create name: "Jessie", age: 28
user4 = User.create name: "Amber", age: 25


Joke.create name: "Squirrel Nuts", content: "Why does the squirrel swim on his back?\n\nTo keep his nuts dry!", category: "Naughty"
Joke.create name: "Chickpea", content: "What's the difference between a chickpea and a garbanzo bean?\n\nI've never payed to have a garbanzo bean on my face!", category: "Naughty"
Joke.create name: "European", content: "If you’re American in the living room, what are you in the bathroom?\n\nEuropean.", category: "Naughty"
Joke.create name: "Needle", content: "Knock-Knock.\n\nWho's there?\n\nNeedle.\n\nNeedle who?\n\nNeedle little help getting in!", category: "Knock_Knock"
Joke.create name: "Candice", content: "Knock-Knock.\n\nWho's there?\n\nCandice.\n\nCandice who?\n\nCandice door open any further? Its freezing out here!", category: "Knock_Knock"
Joke.create name: "Pirates", content: "Why do pirates hate the alphabet?\n\nBecause they get lost at C!", category: "Dad"
Joke.create name: "Dad Jokes", content: "I like to tell dad jokes, and sometimes he laughs!", category: "Dad"

# Favorite.create user: user3, joke: joke1
# Favorite.create user: user1, joke: joke2
# Favorite.create user: user2, joke: joke3
# Favorite.create user: user4, joke: joke4
# Favorite.create user: user4, joke: joke1




# binding.pry
# 0