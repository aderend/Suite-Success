class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:session][:email])
    if user
      session[:user_id] = user.id
      suite = params[:session][:suite_num].to_i
      game = Game.last
      hit_challenge = HitChallenge.find_by(game_id: game.id, suite_num: suite)
      if hit_challenge == nil
        redirect_to user_path(user)
      else
        redirect_to play_hit_challenge_path(hit_challenge)
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
