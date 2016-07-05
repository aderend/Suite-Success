class PitchGuessesController < ApplicationController
  def create
    pitch_speed = PitchSpeed.find(params[:id])
    pitch_guess = PitchGuess.new(guess: params[:pitch_guess][:guess], user_id: current_user.id, pitch_speed_id: pitch_speed.id)
    if pitch_guess.save
      redirect_to games_show_path(pitch_speed.game)
    else
      render play_pitch_speed_path(pitch_speed)
    end
  end
end
