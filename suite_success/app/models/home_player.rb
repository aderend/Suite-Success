class HomePlayer < ActiveRecord::Base
  belongs_to :game

  def increment_bat
    self.increment!(:at_bat, 1)
  end

  def decrement_bat
    self.decrement!(:at_bat, 1)
  end

end
