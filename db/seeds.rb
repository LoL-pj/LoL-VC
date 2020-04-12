# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Rank
ranks = ['UnRank', 'Iron', 'Bronze', 'Silver', 'Gold', 'Platina', 'Diamond', 'Master', 'Grand Master', 'Challenger']
ranks.each do |rank|
  Rank.create(name: rank)
end

#Champion
champions = ['Tank', 'Fighter', 'Assassin', 'Mage', 'Marksman', 'Support']
champions.each do |champion|
  Champion.create(name: champion)
end
