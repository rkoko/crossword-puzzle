class User < ApplicationRecord
  has_many :games
  has_many :crosswords, through: :games
end
