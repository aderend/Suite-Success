class PitchGuess < ActiveRecord::Base
  belongs_to :user
  belongs_to :pitch_speed
end
