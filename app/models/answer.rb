class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  belongs_to :prop_bet

  def self.submit_many_answers(choices, user, questions)
    unsaved_answers = []
    choices.each_with_index do |cho, i|
      unsaved_answers << Answer.new(choice: cho, user_id: user.id, question: questions[i], prop_bet: questions[i].prop_bet)
      i += 1
    end
    unsaved_answers
  en

  def self.check_save(answer_array)
    return true if answer_array.each {|ans| ans.save}
  end

end
