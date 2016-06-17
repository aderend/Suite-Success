class PropBet < ActiveRecord::Base
  has_many :questions
  belongs_to :game
  belongs_to :suite
  has_many :users
  has_many :answers

  def create_submissions_hash
    results = {}
    self.questions.each do |q|
      q.answers.each do |ans|
        results[ans.user] = ans.create_answer_hash[ans.user]
      end
    end
    results
  end

  def create_scores_hash
    hash = {}
    self.suite.users.each do |user|
      hash[user] = 0
    end
    hash
  end

  def calculate_score(submissions, score_hash)
    scores = {score_hash}
    submissions.each do |sub|
      if sub[2] == sub[1]
        scores[sub[0].name] += 1
      end
    end
    scores
  end

end
