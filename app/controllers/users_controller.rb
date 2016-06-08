class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    game_id = Game.last.id
    hit_challenge = HitChallenge.find_by(game_id: game_id, suite_num: user_params[:suite_num])
    if user.save
      session[:user_id] = user.id
      redirect_to play_hit_challenge_path(hit_challenge)
    else
      redirect_to root_path
    end
  end

  def show
    @user = User.find(params[:id])
    @active_game = Game.last
    game_id = @active_game.id
    @active_hit_challenges = HitChallenge.find_by(game_id: game_id)
    @old_games = Game.all
  end

  private

  def  user_params

    params.require(:user).permit(:name, :email, :company, :title, :suite_num)

  end


end
