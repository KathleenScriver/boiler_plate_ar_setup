class CreateJokeTable < ActiveRecord::Migration[6.0]
  def change
    create_table :jokes do |t|
      t.string :name
      t.text :content
      t.string :category
    end
  end
end
