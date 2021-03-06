class HomePlayersController < ApplicationController

  def new
    redirect_to root_path unless is_admin
    @game = Game.find(params[:id])
    @home_player = HomePlayer.new
  end

  def create
    game = Game.find(params[:id])
    home_player = HomePlayer.new(player_params.merge(game_id: game.id, team: game.home))
    if home_player.save
      redirect_to add_home_player_path(game)
    else
      render add_home_player
    end
  end

  def increment_bat
    game = Game.find(params[:id])
    player = HomePlayer.find_by(id: player_params[:player_id])
    player.increment_bat
    redirect_to games_show_path(game)
  end

  def decrement_bat
    game = Game.find(params[:id])
    player = HomePlayer.find_by(id: player_params[:player_id])
    player.decrement_bat
    redirect_to games_show_path(game)
  end

   def destroy
    player = HomePlayer.find(params[:id])
    game = player.game
    player.destroy
    redirect_to games_show_path(game)
  end

  private

  def player_params
    params.require(:home_player).permit(:name, :position, :player_id, :batting_avg)
  end

end
