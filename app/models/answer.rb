class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  belongs_to :prop_bet

  def self.submit_many_answers(choices, user)
    unsaved_answers = []
    choices.each do |cho|
      unsaved_answers << Answer.new(choice: cho, user_id: user.id)
    end
    unsaved_answers
  end

  def self.check_save(answer_array)
    return true if answer_array.each {|ans| ans.save}
  end
end
