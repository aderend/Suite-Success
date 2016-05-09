class HomePlayersController < ApplicationController

  def new
    @home_player = HomePlayer.new
  end

  def create
    game = Game.find(params[:id])
    home_player = HomePlayer.new(player_params.merge(game_id: game.id))
    if home_player.save
      redirect_to games_show_path(game)
    else
      render add_home_player
    end
  end

  private

  def player_params
    params.require(:home_player).permit(:name, :position)
  end

end
