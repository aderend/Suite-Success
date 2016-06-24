class HitChallenge < ActiveRecord::Base
  belongs_to :game
  belongs_to :suite
  has_many :hit_guesses
  has_many :answers
  has_many :users

end
