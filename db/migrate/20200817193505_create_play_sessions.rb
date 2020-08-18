class CreatePlaySessions < ActiveRecord::Migration[6.0]
  def change
    create_table :play_sessions do |t|
      t.boolean :user_win
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
