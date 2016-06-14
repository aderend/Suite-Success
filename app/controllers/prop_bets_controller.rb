class PropBetsController < ApplicationController

  def new
    @prop_bet = PropBet.new
  end

  def create
    game = Game.find(params[:prop_bet][:game_id])
    prop_bet = PropBet.new(game_id: game.id, suite_num: params[:prop_bet][:suite_num])
    if prop_bet.save
      redirect_to new_question_path(prop_bet)
    else
      redirect_to new_prop_bet_path
    end
  end

  def show
    @user = current_user
    @prop_bet = PropBet.find(params[:id])
    @game = @prop_bet.game
    @questions = @prop_bet.questions
  end

end
