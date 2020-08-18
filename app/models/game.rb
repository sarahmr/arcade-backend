class Game < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites
  has_many :play_sessions
  has_many :users, through: :play_session

  def top_players
    top_players_array = []

    self.play_sessions.map { |play| 
      if top_players_array.find { |player| player[:user] == play.user.name }
        hash = top_players_array.find { |player| player[:user] == play.user.name }
        hash[:wins] = play.user_win == true ? hash[:wins] += 1 : hash[:wins] += 0
      else
        top_players_array.push( {user: play.user.name, wins: play.user_win == true ? 1 : 0} )
      end
    }

    top = top_players_array.take(10)

    top
  end

end
