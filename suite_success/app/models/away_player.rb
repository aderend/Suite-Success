class AwayPlayer < ActiveRecord::Base
  belongs_to :game

  def increment_bat
    self.increment!(:at_bat, 1)
  end
end
