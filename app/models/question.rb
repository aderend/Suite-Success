class Question < ActiveRecord::Base
  belongs_to :prop_bet
  has_many :answers

  def self.save_multiple_questions(questions)
    questions.each {|question| question.save}
  end

end
