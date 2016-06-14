class Suite < ActiveRecord::Base
  belongs_to :game
  has_many :hit_challenges
  has_many :prop_bets
  has_many :users

end
