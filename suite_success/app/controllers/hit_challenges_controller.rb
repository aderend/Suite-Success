class HitChallengesController < ApplicationController

  def create
    game = Game.find(params[:id])
    hit_challenge = HitChallenge.new(game_id: game.id)
    if hit_challenge.save
      redirect_to show_hit_challenge_path(hit_challenge)
    else
      redirect_to games_show_path(game)
    end
  end

  def show
    hit_challenge = HitChallenge.find(params[:id])
    @home_players = hit_challenge.game.home_players

  end

end
