class HitChallenge < ActiveRecord::Base
  belongs_to :game
  has_many :guesses
  has_many :answers
  has_many :users
end
