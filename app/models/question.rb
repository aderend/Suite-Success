class Question < ActiveRecord::Base
  belongs_to :prop_bet
  has_many :answers

  accepts_nested_attributes_for :answers
end
