# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_25_190142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kingdoms", force: :cascade do |t|
    t.string "name"
    t.bigint "monarch_id"
    t.index ["monarch_id"], name: "index_kingdoms_on_monarch_id"
  end

  create_table "kingdoms_wars", id: false, force: :cascade do |t|
    t.bigint "war_id", null: false
    t.bigint "kingdom_id", null: false
    t.index ["kingdom_id"], name: "index_kingdoms_wars_on_kingdom_id"
    t.index ["war_id"], name: "index_kingdoms_wars_on_war_id"
  end

  create_table "monarches", force: :cascade do |t|
    t.string "name"
    t.datetime "accession"
    t.datetime "succession"
    t.bigint "successor_id"
    t.index ["successor_id"], name: "index_monarches_on_successor_id"
  end

  create_table "ships", force: :cascade do |t|
    t.string "name"
    t.integer "crew_capacity"
    t.datetime "launched"
    t.datetime "decomissioned"
    t.text "fate"
    t.bigint "kingdom_id"
    t.index ["kingdom_id"], name: "index_ships_on_kingdom_id"
  end

  create_table "utterances", force: :cascade do |t|
    t.text "uttered_text"
    t.datetime "uttered_at"
    t.bigint "monarch_id"
    t.index ["monarch_id"], name: "index_utterances_on_monarch_id"
  end

  create_table "wars", force: :cascade do |t|
    t.datetime "started_at"
    t.datetime "ended_at"
  end

  add_foreign_key "monarches", "monarches", column: "successor_id"
end
