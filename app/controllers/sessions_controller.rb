class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:session][:email])
    if user
      session[:user_id] = user.id
      game = Game.last
      suite = Suite.find_by(suite_number: params[:session][:suite_id], game_id: game.id)

      hit_challenge = HitChallenge.find_by(game_id: game.id, suite_id: suite.id)
      if ((hit_challenge == nil) || (suite.suite_number== "0")) || is_admin
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
