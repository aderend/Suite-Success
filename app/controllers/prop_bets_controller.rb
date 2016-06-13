class PropBetsController < ApplicationController

  def new
    @prop_bet = PropBet.new
  end

  def create
    game = Game.find(params[:prop_bet][:game_id])
    prop_bet = PropBet.new(game_id: game.id, suite_num: params[:prop_bet][:suite_num])
    if prop_bet.save
      redirect_to new_question_path
    else
      redirect_to games_show_path(game)
    end
  end

end
