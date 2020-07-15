# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
t1 = Team.create(name: 'Liverpool')
t2 = Team.create(name: 'Manchester City')

game = Game.create(home_id: t1.id, away_id: t2.id)
