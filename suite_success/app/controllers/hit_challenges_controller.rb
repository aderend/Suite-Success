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
    @c_home_players = hit_challenge.home_list_players("C")
    @b1_home_players = hit_challenge.home_list_players("1B")
    @b2_home_players = hit_challenge.home_list_players("2B")
    @b3_home_players = hit_challenge.home_list_players("3B")
    @ss_home_players = hit_challenge.home_list_players("SS")
    @of_home_players = hit_challenge.home_list_players("OF")
    @DHP_home_players = hit_challenge.home_list_players("DH")
  end

end
