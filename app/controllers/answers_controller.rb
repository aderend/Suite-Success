class AnswersController < ApplicationController

  def create
    prop_bet = PropBet.find(params[:id])
    user = User.find(session[:user_id])
    @num_of_questions = prop_bet.questions.count
    byebug
    @answers = num_of_questions.times do

    end
    if @answers.save
      redirect_to game_show_path(prop_bet.game)
    else
      render show_prop_bet_path(prop_bet)
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:choice, :question_id)
  end

end
