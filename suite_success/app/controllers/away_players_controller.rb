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

  def player_params
    params.require(:away_player).permit(:name, :position)
  end

end
