class CreateMusicTable < ActiveRecord::Migration[6.0]
  def change
    create_table :music do |t|
      t.string :song
      t.string :artist
      t.string :album
      t.string :genre
    end
  end
end
