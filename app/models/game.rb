class Game < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites
  has_many :play_sessions
  has_many :users, through: :play_session
end
