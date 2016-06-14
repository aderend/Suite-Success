class User < ActiveRecord::Base
  has_many :guesses
  has_one :hit_guess
  has_many :answers
  belongs_to :hit_challenge


  validates_presence_of :email, :name, :company, :title

end
