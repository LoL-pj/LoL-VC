# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Rank
ranks = ['UNRANK', 'IRON', 'BRONZE', 'SILVER', 'GOLD', 'PlATINUM', 'DIAMOND', 'MASTER', 'GRANDMASTER', 'CHALLENGER']
ranks.each do |rank|
  Rank.create(name: rank)
end

#Champion
champions = ['Tank', 'Fighter', 'Assassin', 'Mage', 'Marksman', 'Support']
champions.each do |champion|
  Champion.create(name: champion)
end

#GameType
game_types = ['Normal', 'Rank', 'TFT', 'ARAM', 'WildRift']
game_types.each do |game_type|
  GameType.create(name: game_type)
end

#Lane
lanes = ['top', 'mid', 'jg', 'adc', 'support']
lanes.each do |lane|
  Lane.create(name: lane)
end
