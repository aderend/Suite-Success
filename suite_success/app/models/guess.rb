class Guess < ActiveRecord::Base
  belongs_to :hit_challenge
  belongs_to :user
end
