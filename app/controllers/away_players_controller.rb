class AwayPlayersController < ApplicationController

  def new
    @away_player = AwayPlayer.new
  end

  def create
    game = Game.find(params[:id])
    away_player = AwayPlayer.new(player_params.merge(game_id: game.id))
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

  def destroy
    player = AwayPlayer.find(params[:id])
    game = player.game
    player.destroy
    redirect_to games_show_path(game)
  end

  private

  def player_params
    params.require(:away_player).permit(:name, :position, :batting_avg, :player_id)
  end

end
