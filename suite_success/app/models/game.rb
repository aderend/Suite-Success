class Game < ActiveRecord::Base
  has_many :hit_challenges
  has_many :away_players
  has_many :home_players
end
