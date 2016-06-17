class UsersController < ApplicationController

  def new
    @suite_numbers = Game.last.suites.each {|s| s.suite_number}
    @user = User.new
  end

  def create
   user = User.new(user_params)
   suite_id = Suite.find_by(suite_number: user_params[:suite_id]).id
    game = Game.last
    hit_challenge = HitChallenge.find_by(game_id: game.id, suite_id: suite_id)
    if user.save
      session[:user_id] = user.id
      if hit_challenge == nil
        redirect_to games_show_path(game)
      else
        redirect_to play_hit_challenge_path(hit_challenge)
      end
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

    params.require(:user).permit(:name, :email, :company, :title, :suite_id)

  end


end
