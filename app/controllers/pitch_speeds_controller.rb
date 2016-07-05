class PitchSpeedsController < ApplicationController

  def create
    game = Game.find(params[:game_id])
    suite_id = Suite.find_by(suite_number: params[:pitch_speed][:suite_id], game_id: game.id).id
    pitch_speed = PitchSpeed.new(title: params[:pitch_speed][:title], max_speed: params[:pitch_speed][:max_speed], min_speed: params[:pitch_speed][:min_speed], suite_id: suite_id, game_id: game.id)
    if pitch_speed.save
      redirect_to play_pitch_speed_path(pitch_speed)
    else
      render games_show_path(game)
    end
  end

  def play
    @pitch_speed = PitchSpeed.find(params[:id])
    @speed_array = @pitch_speed.create_speeds_array
  end

  def status
    @pitch_speed = PitchSpeed.find(params[:id])
    @game_title = @pitch_speed.game.title
    @guesses = @pitch_speed.pitch_guesses
  end

end
