# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'



puts "Clearing database..."
Team.destroy_all
Game.destroy_all

# league_url = "https://raw.githubusercontent.com/openfootball/football.json/master/2019-20/en.1.json"
# get_league = open(league_url).read

# JSON.parse(get_league)['rounds']['matches'].each do |match|
   
#     Game.create(home_id: match.team1, away_id: match.team2)
# end

t1 = Team.create(name: 'Liverpool')
t2 = Team.create(name: 'Manchester City')
game = Game.create(home_team_id: t1.id, away_team_id: t2.id)

puts "Created #{Game.count} games"
puts "Created #{Team.count} teams"