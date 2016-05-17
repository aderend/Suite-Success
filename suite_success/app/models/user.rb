class User < ActiveRecord::Base
  has_many :guesses
  belongs_to :hit_challenge
end
