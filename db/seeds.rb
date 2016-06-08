# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(name: "Pat Luckett", company: "Novo Consulting", email: "pat@gmail.com", admin: true, title: "hospitality Manager" )
user2 = User.create(name: "Deren Dogrusoy", company: 'Altinyildiz', email: "d.dogrusoy@gmail.com", title: "developer")

game1 = Game.create(title: "NYY vs RED SOX", home: "Yankees", away: "RedSox")
challenge1 = game1.hit_challenges.create(suite_num: 22)
player1 = game1.home_players.create(name: "Dellin Betances", position: "C", batting_avg: "0.105")
player3 = game1.home_players.create(name: "Richard Bleier", position: "1B", batting_avg: "0.205")
player2 = game1.home_players.create(name: "Aroldis Chapman", position: "2B", batting_avg: "0.405")
player4 = game1.away_players.create(name: "Ivan Nova", position: "C", batting_avg: "0.405")
player5 = game1.away_players.create(name: "Michael Pineda", position: "1B", batting_avg: "0.405")
player6 = game1.away_players.create(name: "CC Sabathia", position: "2B", batting_avg: "0.405")
player7 = game1.home_players.create(name: "Masahiro Tanaka", position: "3B", batting_avg: "0.405")
player8 = game1.home_players.create(name: "Alex Rodriguez", position: "SS", batting_avg: "0.405")
player9 = game1.home_players.create(name: "Aaron Hicks", position: "RF", batting_avg: "0.405")
player10 = game1.away_players.create(name: "Brett Gardner", position: "3B", batting_avg: "0.405")
player11 = game1.away_players.create(name: "Jacoby Ellsbury", position: "SS", batting_avg: "0.405")
player12 = game1.away_players.create(name: "Carlos Beltran", position: "RF", batting_avg: "0.405")
player13 = game1.home_players.create(name: "Lewis Hamilton", position: "LF", batting_avg: "0.405")
player14 = game1.home_players.create(name: "Didi Gregorius", position: "CF", batting_avg: "0.405")
player15 = game1.home_players.create(name: "Chris Parmelee", position: "DH", batting_avg: "0.405")
player16 = game1.away_players.create(name: "Starlin Castro", position: "LF", batting_avg: "0.405")
player17 = game1.away_players.create(name: "Austin Romine", position: "CF", batting_avg: "0.405")
player18 = game1.away_players.create(name: "Brian McCann", position: "DH", batting_avg: "0.405")


