class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    game = Game.new(game_params)
    if game.save
      redirect_to add_home_player_path(game)
    else
      redirect_to root_path
    end
  end

  def show
    redirect_to root_path unless current_user
    @game = Game.find(params[:id])
    @hit_challenges = @game.hit_challenges
    @home_players = @game.home_players.order(position: :asc)
    @away_players = @game.away_players.order(position: :asc)
  end

  def index
    @games = Game.all
  end

  private

  def game_params
    params.require(:game).permit(:home, :away, :sport, :title)
  end

end
