class Question < ActiveRecord::Base
  belongs_to :hit_challenge
  has_many :guesses
  has_many :answers
end
