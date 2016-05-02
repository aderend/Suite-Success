class Challenge < ActiveRecord::Base
  belongs_to :game
  has_many :guesses
end
