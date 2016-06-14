class Question < ActiveRecord::Base
  belongs_to :prop_bet
  has_many :answers
end
