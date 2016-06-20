class User < ActiveRecord::Base
  has_many :guesses
  has_one :hit_guess
  has_many :answers
  belongs_to :hit_challenge
  belongs_to :prop_bet
  belongs_to :suite

  validates_presence_of :email, :name, :company, :title

  def user_answer_for_question(question)
    if Answer.find_by(user: self) != nil
      question.answers.find_by(user_id: self.id).choice
    else
      "No Answer"
    end
  end

  def calculate_prop_score(prop_bet)
    score = 0
    prop_bet.questions.each do |q|
      if q.correct_choice == self.user_answer_for_question(q)
        score += 1
      end
    end
    score
  end

end
