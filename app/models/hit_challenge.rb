class HitChallenge < ActiveRecord::Base
  belongs_to :game
  belongs_to :suite
  has_many :hit_guesses
  has_many :answers
  has_many :users

  def display_scores
    scores = {}
    self.hit_guesses.each do |guess|
      scores[guess.calculate_points] = [guess.user.name, guess.total_hits]
    end
    scores.sort_by {|key, value| key}.reverse.to_h
  end

end
