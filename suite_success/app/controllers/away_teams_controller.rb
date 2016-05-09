class AwayTeamsController < ApplicationController

  def new
    @away_player = AwayPlayer.new
  end

end
