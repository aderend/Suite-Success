class HitGuess < ActiveRecord::Base
  belongs_to :hit_challenge
  belongs_to :user

  HIT_GUESS_POSITIONS = ["pos_c", "pos_1b", "pos_2b", "pos_3b", "pos_ss", "pos_of1", "pos_of2", "pos_of3", "pos_dh", "away_pos_c", "away_pos_1b", "away_pos_2b", "away_pos_3b", "away_pos_ss", "away_pos_of1", "away_pos_of2", "away_pos_of3", "away_pos_dh"]

  def list_players
    players = []
    HitGuess::HIT_GUESS_POSITIONS.each do |pos|
      players << self[pos].gsub(/[^a-zA-Z]/, '').downcase unless self[pos] == nil
    end
    players.delete_if {|p| p == "" }
    players
  end

  def calculate_points
    duplicate_players = self.hit_challenge.list_player_names + list_players


  end


end
