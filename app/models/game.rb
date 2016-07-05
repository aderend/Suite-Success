class Game < ActiveRecord::Base
  has_many :hit_challenges
  has_many :prop_bets
  has_many :away_players
  has_many :home_players
  has_many :suites
  has_many :pitch_speeds

  accepts_nested_attributes_for :suites

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

  def has_hit_challenge
    (self.hit_challenges.count > 0) ? true : false
  end

  def has_prop_bet
    (self.prop_bets.count > 0) ? true : false
  end

  def has_pitch_speed
    (self.pitch_speeds.count > 0) ? true : false
  end

end
