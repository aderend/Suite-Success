class Game < ActiveRecord::Base
  has_many :hit_challenges
  has_many :away_players
  has_many :home_players

   def total_hits
    home_players = self.home_players
    away_players = self.away_players
    total_at_bat = 0
    away_players.each do |p|
      total_at_bat += p.at_bat
    end
    home_players.each do |p|
      total_at_bat += p.at_bat
    end
    total_at_bat
  end

end
