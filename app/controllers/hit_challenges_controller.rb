class HitChallengesController < ApplicationController

  def create
    game = Game.find(params[:id])
    suite_id = Suite.find_by(suite_number: params[:hit_challenge][:suite_id], game_id: game.id).id
    hit_challenge = HitChallenge.new(game_id: game.id, suite_id: suite_id)
    if hit_challenge.save
      redirect_to games_show_path(game)
    else
      render games_show_path(game)
    end
  end

  def play
    redirect_to root_path unless current_user
    hit_challenge = HitChallenge.find(params[:id])
    @game = hit_challenge.game
    @home_players = hit_challenge.game.home_players
    @c_home_players = hit_challenge.home_list_players("C")
    @b1_home_players = hit_challenge.home_list_players("1B")
    @b2_home_players = hit_challenge.home_list_players("2B")
    @b3_home_players = hit_challenge.home_list_players("3B")
    @ss_home_players = hit_challenge.home_list_players("SS")
    @of_home_players = hit_challenge.home_list_players("RF")
    @of_home_players = hit_challenge.home_list_players("LF")
    @of_home_players = hit_challenge.home_list_players("CF")
    @DHP_home_players = hit_challenge.home_list_players("DH")
    @c_away_players = hit_challenge.away_list_players("C")
    @b1_away_players = hit_challenge.away_list_players("1B")
    @b2_away_players = hit_challenge.away_list_players("2B")
    @b3_away_players = hit_challenge.away_list_players("3B")
    @ss_away_players = hit_challenge.away_list_players("SS")
    @of_away_players = hit_challenge.away_list_players("RF")
    @of_away_players = hit_challenge.away_list_players("LF")
    @of_away_players = hit_challenge.away_list_players("CF")
    @DHP_away_players = hit_challenge.away_list_players("DH")
  end

  def status
    @hit_challenge = HitChallenge.find(params[:id])
    @guesses = @hit_challenge.hit_guesses
  end

end
