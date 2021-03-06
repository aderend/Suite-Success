class QuestionsController < ApplicationController

  def new
    @prop_bet = PropBet.find(params[:id])
    @question = Question.new
  end

  def create
    prop_bet = PropBet.find(params[:question][:prop_id])
    question = prop_bet.questions.new(question_params)
    if question.save
      redirect_to new_question_path(prop_bet)
    else
      redirect_to new_prop_bet_path
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    question = Question.find(params[:id])
    game = question.prop_bet.game
    if question.update_attributes(question_params)
      redirect_to edit_prop_path(question.prop_bet)
    else
      redirect_to games_edit_path(game)
    end
  end

  private

  def question_params
    params.require(:question).permit(:body, :choice1, :choice2, :prop_bet_id)
  end

end
