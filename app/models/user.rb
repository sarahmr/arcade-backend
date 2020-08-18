class User < ApplicationRecord
  has_many :favorites
  has_many :games, through: :favorites
  has_many :play_sessions
  has_many :games, through: :play_sessions

  def self.top_users
    top_users_hash = {}
    self.all.map { |user| top_users_hash[user.name] = user.play_sessions.length }
  end
end
