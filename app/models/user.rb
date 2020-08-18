class User < ApplicationRecord
  has_many :favorites
  has_many :games, through: :favorites
  has_many :play_sessions
  has_many :games, through: :play_sessions

  def self.top_users
    top_users_array = []
    self.all.map { |user| top_users_array.push({name: user.name, wins: user.play_sessions.select{ |play| play.user_win == true }.length }) }

    top = top_users_array.take(10)
    top
  end

  def user_stats
    user_stats_array = []

    self.play_sessions.map { |play| 
      if user_stats_array.find { |stat| stat[:game_name] == play.game.name }
        hash = user_stats_array.find { |stat| stat[:game_name] == play.game.name }
        hash[:total_games] += 1
        hash[:total_wins] = play.user_win == true ? hash[:total_wins] += 1 : hash[:total_wins] += 0
      else
        user_stats_array.push({
          game_name: play.game.name,
          total_games: 1,
          total_wins: (play.user_win == true ? 1 : 0) 
        })
      end
     }

    user_stats_array
  end


end
