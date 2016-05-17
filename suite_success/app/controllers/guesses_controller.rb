class GuessesController < ApplicationController

  def create
    hit_challenge = HitChallenge.find(params[:id])
    game = hit_challenge.game
    p "***********************"
    params
    p "***********************"
    guess = hit_challenge.guesses.new(guess_params)
    if guess.save
      redirect_to games_show_path(game)
    else
      redirect_to hit_challenge_show_path(hit_challenge)
    end
  end

  private

  def guess_params
    params.require(:guess).permit(:player_name)
  end

end
