class PropBet < ActiveRecord::Base
  has_many :questions
  belongs_to :game
  belongs_to :suite
  has_many :users
  has_many :answers

  def display_scores
    scores_hash = {}
    self.suite.users.each do |u|
      scores_hash[u.name] = u.calculate_prop_score(self)
    end
    scores_hash
  end

end
