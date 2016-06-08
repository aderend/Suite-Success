class HitGuess < ActiveRecord::Base
  belongs_to :hit_challenge
  belongs_to :user

  HIT_GUESS_POSITIONS = ["pos_c", "pos_1b", "pos_2b", "pos_3b", "pos_ss", "pos_of1", "pos_of2", "pos_of3", "pos_dh", "away_pos_c", "away_pos_1b", "away_pos_2b", "away_pos_3b", "away_pos_ss", "away_pos_of1", "away_pos_of2", "away_pos_of3", "away_pos_dh"]

  def list_players
    players = []
    HitGuess::HIT_GUESS_POSITIONS.each do |pos|
      players << self[pos].gsub(/:.*/, '') unless self[pos] == nil
    end
    players.delete_if {|p| p == "" }
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
