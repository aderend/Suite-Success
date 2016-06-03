class User < ActiveRecord::Base
  has_many :guesses
  has_one :hit_guess
  belongs_to :hit_challenge
end
