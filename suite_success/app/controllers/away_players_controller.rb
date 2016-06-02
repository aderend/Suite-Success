class AwayPlayersController < ApplicationController

  def new
    @away_player = AwayPlayer.new
  end

  def create
    away_player = AwayPlayer.new(player_params)
    if away_player.save
      redirect_to games_show_path
    else
      render add_away_player
    end
  end

  def increment_bat
    game = Game.find(params[:id])
    player = AwayPlayer.find_by(id: player_params[:player_id])
    player.increment_bat
    redirect_to games_show_path(game)
  end

  def deccrement_bat
    game = Game.find(params[:id])
    player = AwayPlayer.find_by(id: player_params[:player_id])
    player.decrement_bat
    redirect_to games_show_path(game)
  end

  def player_params
    params.require(:away_player).permit(:name, :position)
  end

end
