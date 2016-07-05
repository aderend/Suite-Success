# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

game1 = Game.create(title: "NYY vs RED SOX", home: "Yankees", away: "RedSox")

suite1 = Suite.create(game_id: 1, suite_number: "22")

user1 = User.create(name: "Pat Luckett", company: "Novo Consulting", email: "pat@gmail.com", admin: true, title: "hospitality Manager")
user2 = User.create(name: "Deren Dogrusoy", company: 'Altinyildiz', email: "d.dogrusoy@gmail.com", title: "developer", suite_id: 1)

challenge1 = game1.hit_challenges.create(suite_id: 1)

player1 = game1.home_players.create(name: "Dellin Betances", position: "C", batting_avg: "0.105", team: "Yankees")
player2 = game1.home_players.create(name: "Aroldis Chapman", position: "2B", batting_avg: "0.405", team: "Yankees")
player3 = game1.home_players.create(name: "Richard Bleier", position: "1B", batting_avg: "0.205", team: "Yankees")
player4 = game1.away_players.create(name: "Ivan Nova", position: "C", batting_avg: "0.405", team: "Red Sox")
player5 = game1.away_players.create(name: "Michael Pineda", position: "1B", batting_avg: "0.405", team: "Red Sox")
player6 = game1.away_players.create(name: "CC Sabathia", position: "2B", batting_avg: "0.405", team: "Red Sox")
player7 = game1.home_players.create(name: "Masahiro Tanaka", position: "3B", batting_avg: "0.405", team: "Yankees")
player8 = game1.home_players.create(name: "Alex Rodriguez", position: "SS", batting_avg: "0.405", team: "Yankees")
player9 = game1.home_players.create(name: "Aaron Hicks", position: "RF", batting_avg: "0.405", team: "Yankees")
player10 = game1.away_players.create(name: "Brett Gardner", position: "3B", batting_avg: "0.405", team: "Red Sox")
player11 = game1.away_players.create(name: "Jacoby Ellsbury", position: "SS", batting_avg: "0.405", team: "Red Sox")
player12 = game1.away_players.create(name: "Carlos Beltran", position: "RF", batting_avg: "0.405", team: "Red Sox")
player13 = game1.home_players.create(name: "Lewis Hamilton", position: "LF", batting_avg: "0.405", team: "Yankees")
player14 = game1.home_players.create(name: "Didi Gregorius", position: "CF", batting_avg: "0.405", team: "Yankees")
player15 = game1.home_players.create(name: "Chris Parmelee", position: "DH", batting_avg: "0.405", team: "Yankees")
player16 = game1.away_players.create(name: "Starlin Castro", position: "LF", batting_avg: "0.405", team: "Red Sox")
player17 = game1.away_players.create(name: "Austin Romine", position: "CF", batting_avg: "0.405", team: "Red Sox")
player18 = game1.away_players.create(name: "Brian McCann", position: "DH", batting_avg: "0.405", team: "Red Sox")

prop_bet1 = PropBet.create(game_id: 1, suite_id: 1)

question1 = Question.create(body: "Red or Blue", choice1: "Red", choice2: "Blue", prop_bet_id: 1, correct_choice: "Blue")
question2 = Question.create(body: "Day or Night", choice1: "Day", choice2: "Night", prop_bet_id: 1, correct_choice: "Day")
question3 = Question.create(body: "Good or Evil", choice1: "Good", choice2: "Evil", prop_bet_id: 1, correct_choice: "Good")

pitch_speed = PitchSpeed.create(game_id: 1, suite_id: 1, min_speed: "100", max_speed: "120", title: "6th Inning")





