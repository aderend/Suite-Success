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
question1 = challenge1.questions.create(body: "C")
guess1 = user1.guesses.create(body: "0.280", question_id: 1)
answer1 = question1.answers.create(body: "0.150")

