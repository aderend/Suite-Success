class HitChallenge < ActiveRecord::Base
  belongs_to :game
  has_many :hit_guesses
  has_many :answers
  has_many :users

  def away_list_players(pos)
    game.away_players.where(position: pos)
  end

  def home_list_players(pos)
    game.home_players.where(position: pos)
  end

  def calculate_bats
    home_players = self.game.home_players
    away_players = self.game.away_players
    total_at_bat = 0
    away_players.each do |p|
      total_at_bat += p.at_bat
    end
    home_players.each do |p|
      total_at_bat += p.at_bat
    end
    total_at_bat
  end

  def list_player_names
    game_players = []
    self.game.home_players.each do |p|
      game_players << p.name.downcase.delete(" ")
    end
    self.game.away_players.each do |p|
      game_players << p.name.downcase.delete(" ")
    end
    game_players
  end



end
