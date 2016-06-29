class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    game = Game.new(game_params)
    if game.save
      Suite.create(suite_number: 999, game_id: game.id)
      redirect_to games_show_path(game)
    else
      redirect_to root_path
    end
  end

  def edit
    redirect_to games_show_path(game) unless is_admin
    @game = Game.find(params[:id])
  end

  def update
    game = Game.find(params[:id])
    if game.update_attributes(game_params)
      redirect_to games_show_path(game)
    else
      redirect_to games_edit_path(game)
    end
  end

  def update_total_hits
    game = Game.find(params[:id])
    if game.update_attributes(game_params)
      redirect_to games_show_path(game)
    else
      render games_show_path(game)
    end
  end

  def show
    redirect_to root_path unless current_user
    @game = Game.find(params[:id])
    @hit_challenges = @game.hit_challenges
    @prop_bets = @game.prop_bets
    @suites = @game.suites
    @home_players = @game.home_players.order(position: :asc)
    @away_players = @game.away_players.order(position: :asc)
  end

  def index
    @games = Game.all
  end

  def destroy
    game = Game.find(params[:id])
    game.destroy
    redirect_to games_index_path
  end

  private

  def game_params
    params.require(:game).permit(:home, :away, :sport, :title, :total_hits)
  end

end
