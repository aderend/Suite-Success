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
    @c_players = hit_challenge.game.away_players.where(position: "C") + hit_challenge.game.home_players.where(position: "C")
    @b1_players = hit_challenge.game.away_players.where(position: "1B") + hit_challenge.game.home_players.where(position: "1B")
    @b2_players = hit_challenge.game.away_players.where(position: "2B") + hit_challenge.game.home_players.where(position: "2B")
    @b3_players = hit_challenge.game.away_players.where(position: "3B") + hit_challenge.game.home_players.where(position: "3B")
    @ss_players = hit_challenge.game.away_players.where(position: "SS") + hit_challenge.game.home_players.where(position: "SS")
    @lf_players = hit_challenge.game.away_players.where(position: "LF") + hit_challenge.game.home_players.where(position: "LF")
    @rf_players = hit_challenge.game.away_players.where(position: "RF") + hit_challenge.game.home_players.where(position: "RF")
    @cf_players = hit_challenge.game.away_players.where(position: "CF") + hit_challenge.game.home_players.where(position: "CF")
    @dh_players = hit_challenge.game.away_players.where(position: "DH") + hit_challenge.game.home_players.where(position: "DH")
  end

  def status
    @hit_challenge = HitChallenge.find(params[:id])
    @scores = @hit_challenge.display_scores
  end

  def destroy
    hit_challenge = HitChallenge.find(params[:id])
    game = hit_challenge.game
    hit_challenge.destroy
    redirect_to games_show_path(game)
  end

end
