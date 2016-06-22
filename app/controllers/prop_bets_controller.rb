class PropBetsController < ApplicationController

  def new
    @prop_bet = PropBet.new
  end

  def create
    game = Game.find(params[:game_id])
    suite_id = Suite.find_by(suite_number: params[:prop_bet][:suite_id], game_id: game.id).id
    prop_bet = PropBet.new(game_id: game.id, suite_id: suite_id)
    if prop_bet.save
      redirect_to new_question_path(prop_bet)
    else
      redirect_to new_prop_bet_path
    end
  end

  def play
    @user = current_user
    @prop_bet = PropBet.find(params[:id])
    @game = @prop_bet.game
    @questions = @prop_bet.questions
  end

  def pick_correct_answers
    redirect_to games_show_path(@game) unless is_admin
    @prop_bet = PropBet.find(params[:id])
    @game = @prop_bet.game
    @questions = @prop_bet.questions
  end

  def submit_correct_answers
    prop_bet = PropBet.find(params[:id])
    questions = prop_bet.questions
    correct_answers = {}
    index = 0
    until index == questions.count do
      questions[index].correct_choice = params[index.to_s]
      index += 1
    end
    redirect_to prop_status_path(prop_bet)
  end

  def status
    @prop_bet = PropBet.find(params[:id])
    @questions = @prop_bet.questions
    @users = @prop_bet.users
    @scores = @prop_bet.display_scores
  end

  def edit
    prop_bet = PropBet.find(params[:id])
    @questions = prop_bet.questions
    @game = prop_bet.game
  end

  def destroy
    prop_bet = PropBet.find(params[:id])
    game = prop_bet.game
    prop_bet.destroy
    redirect_to games_show_path(game)
  end

end
