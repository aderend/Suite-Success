class PropBet < ActiveRecord::Base
  has_many :questions
  has_many :answers
  belongs_to :game
end
