class PropBet < ActiveRecord::Base
  has_many :questions
  belongs_to :game
end
