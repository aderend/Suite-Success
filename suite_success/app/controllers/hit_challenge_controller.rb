class HitChallengeController < ApplicationController

  def create
    new_hit_challenge = HitChallenge.new

  end

  def show
    hit_challenge
  end

end
