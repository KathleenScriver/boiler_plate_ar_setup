require 'pry'

Favorite.destroy_all
User.destroy_all
Joke.destroy_all

user1 = User.create name: "Colter", age: 25
user2 = User.create name: "Chris", age: 35
user3 = User.create name: "Jessie", age: 28
user4 = User.create name: "Amber", age: 25


joke1 = Joke.create name: "Squirrel Nuts", content: "Why does the squirrel swim on his back? To keep his nuts dry!", category: "Naughty"
joke2 = Joke.create name: "Needle", content: "Knock-Knock. Who's there? Needle. Needle who? Needle little help getting in!", category: "Knock-Knock"
joke2 = Joke.create name: "Pirats", content: "Why do pirates hate the alphabet? Because they get lost at C!", category: "Dad"
joke2 = Joke.create name: "Dad Jokes", content: "I like to tell dad jokes, and sometimes he laughs!", category: "Dad"

Favorite.create user: user3, joke: joke1
Favorite.create user: user1, joke: joke2
Favorite.create user: user2, joke: joke3
Favorite.create user: user4, joke: joke4
Favorite.create user: user4, joke: joke1




binding.pry
0