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

end
