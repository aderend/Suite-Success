class AnswersController < ApplicationController

  def create
    prop_bet = PropBet.find(params[:id])
    user = User.find(session[:user_id])
    index = 0
    choices=[]
    until index == prop_bet.questions.count do
      choices << params[index.to_s]
      index+=1
    end
    answers = Answer.submit_many_answers(choices, current_user)
    if Answer.check_save(answers)
      redirect_to games_show_path(prop_bet.game)
    else
      render show_prop_bet_path(prop_bet)
    end
  end

end
