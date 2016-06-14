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

  def edit
    game = Game.find(params[:id])
  end

  def update
    game = Game.find(params[:id])
    redirect_to games_show_path(game) unless is_admin
    if game.update_attributes(game_params)
      redirect_to games_show_path(game)
    else
      redirect_to games_edit_path(game)
    end
  end

  def show
    redirect_to root_path unless current_user
    @game = Game.find(params[:id])
    @hit_challenges = @game.hit_challenges
    @suites = @game.suites
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
