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

ActiveRecord::Schema.define(version: 2020_04_02_141126) do

  create_table "champions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ranks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "namet", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "team_champions", force: :cascade do |t|
    t.integer "team_id"
    t.integer "champion_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "team_tags", force: :cascade do |t|
    t.integer "team_id_id", null: false
    t.integer "tag_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tag_id_id"], name: "index_team_tags_on_tag_id_id"
    t.index ["team_id_id"], name: "index_team_tags_on_team_id_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "title", null: false
    t.text "body", null: false
    t.string "summoner_name"
    t.string "skype"
    t.string "discord"
    t.string "game_type"
    t.string "password", null: false
    t.integer "rank_id"
    t.integer "champion_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["champion_id"], name: "index_teams_on_champion_id"
    t.index ["rank_id"], name: "index_teams_on_rank_id"
  end

  add_foreign_key "team_tags", "tag_ids"
  add_foreign_key "team_tags", "team_ids"
  add_foreign_key "teams", "champions"
  add_foreign_key "teams", "ranks"
end
