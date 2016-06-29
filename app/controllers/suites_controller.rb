class SuitesController < ApplicationController

  def create
    game = Game.find(params[:game_id])
    suite = Suite.new(game_id: game.id, suite_number: params[:suite][:suite_number])
    if suite.save
      redirect_to games_show_path(game)
    else
      render games_show_path(game)
    end
  end

  def status
    @suite = Suite.find(params[:id])
    @hit_challenges = @suite.where(suite_id: @suite.id)
    @prop_bets = @suite.where(suite_id: @suite.id)
  end

  private

  def suite_params
    params.require(:suite).permit(:suite_number, :game_id)
  end

end
