class PitchSpeed < ActiveRecord::Base
  belongs_to :suite
  has_many :users
  belongs_to :game
  has_many :pitch_guesses

  def create_speeds_array
    (self.min_speed..self.max_speed).to_a
  end

end
