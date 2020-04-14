class CreatePlaylistTable < ActiveRecord::Migration[6.0]
  def change
    create_table :playlist do |t|
      t.references :user, foreign_key: true
      t.references :music, foreign_key: true
    end
  end
end
