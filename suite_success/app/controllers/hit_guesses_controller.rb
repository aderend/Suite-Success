class HitGuessesController < ApplicationController

  def create
    hit_challenge = HitChallenge.find(params[:id])
    game = hit_challenge.game_id
    hit_guess = hit_challenge.hit_guesses.new(hit_guess_params)
    hit_guess.user_id = current_user.id
    if hit_guess.save
      redirect_to games_show_path(game)
    else
      redirect_to show_hit_challenge(hit_challenge)
    end
  end

  private

  def hit_guess_params
    params.require(:hit_guess).permit(:pos_c, :pos_1b, :pos_2b, :pos_3b, :pos_ss, :pos_of1, :pos_of2, :pos_of3, :pos_dh, :total_hits)
  end

end
