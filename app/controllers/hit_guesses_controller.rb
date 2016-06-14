class HitGuessesController < ApplicationController

  def create
    hit_challenge = HitChallenge.find(params[:id])
    game = hit_challenge.game_id
    hit_guess = hit_challenge.hit_guesses.new(hit_guess_params).merge(user_id: current_user.id)
    # hit_guess.user_id = current_user.id
    if hit_guess.save
      redirect_to games_show_path(game)
    else
      redirect_to show_hit_challenge(hit_challenge)
    end
  end

  private

  def hit_guess_params
    params.require(:hit_guess).permit(:pos_c, :away_pos_c, :pos_1b, :away_pos_1b, :pos_2b, :away_pos_2b, :pos_3b, :away_pos_3b, :pos_ss, :away_pos_ss, :pos_rf, :away_pos_rf, :pos_lf, :away_pos_lf, :pos_cf, :away_pos_cf, :pos_dh, :away_pos_dh, :total_hits)
  end

end
