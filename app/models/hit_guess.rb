class HitGuess < ActiveRecord::Base
  belongs_to :hit_challenge
  belongs_to :user

  HIT_GUESS_POSITIONS = ["pos_c", "pos_1b", "pos_2b", "pos_3b", "pos_ss", "pos_of1", "pos_of2", "pos_of3", "pos_dh"]

  def list_players
    players = []
    HitGuess::HIT_GUESS_POSITIONS.each do |pos|
      players << self[pos].gsub(/:.*/, '') unless self[pos] == nil
    end
    players
  end

  def calculate_points
    players = list_players
    points = 0
    players.each do |p|
      if HomePlayer.find_by(name: p) == nil
        points += AwayPlayer.find_by(name: p).at_bat
      else
        points += HomePlayer.find_by(name: p).at_bat
      end
    end
    points
  end


end
