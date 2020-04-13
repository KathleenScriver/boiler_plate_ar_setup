# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_13_210109) do

  create_table "music", force: :cascade do |t|
    t.string "song"
    t.string "artist"
    t.string "album"
    t.string "genre"
  end

  create_table "user_music_interests", force: :cascade do |t|
    t.integer "user_id"
    t.integer "music_id"
    t.index ["music_id"], name: "index_user_music_interests_on_music_id"
    t.index ["user_id"], name: "index_user_music_interests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "user_music_interests", "musics"
  add_foreign_key "user_music_interests", "users"
end
