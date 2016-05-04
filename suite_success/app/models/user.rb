class User < ActiveRecord::Base
  has_many :guesses
end
