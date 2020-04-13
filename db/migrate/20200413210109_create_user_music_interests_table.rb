class CreateUserMusicInterestsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :user_music_interests do |t|
      t.references :user, foreign_key: true
      t.references :music, foreign_key: true
    end
  end
end
