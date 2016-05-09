class HomeTeamsController < ApplicationController

  def new
    @home_player = HomePlayer.new
  end

end
