class HitChallenge < ActiveRecord::Base
  belongs_to :game
  has_many :guesses
  has_many :answers
  has_many :users
end

def away_list_players(pos)
  AwayPlayers.where(position: pos)
end

def home_list_players(pos)
  HomePlayers.where(position: pos)
end
