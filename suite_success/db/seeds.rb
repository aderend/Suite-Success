# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(name: "Pat Luckett",company: "Novo Consulting", email: "pat@gmail.com")

game1 = Game.create(home: "Yankees", away: "RedSox")
challenge1 = game1.hit_challenges.create
player1 = game1.home_players.create(name: "Michale Jordan", position: "C")
player2 = game1.home_players.create(name: "Allen Iverson", position: "OF")
player2 = game1.home_players.create(name: "Lewis Hamilton", position: "C")


