class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to root_path
    end
  end

  def show
    @user = User.find_by(params[:id])
    @active_game = Game.find_by(active: true)
    @active_hit_challenge = HitChallenge.find_by(over: false)
    @old_games = Game.all
  end

  private

  def  user_params

    params.require(:user).permit(:name, :email, :company, :title)

  end


end
