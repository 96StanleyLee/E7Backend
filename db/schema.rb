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

ActiveRecord::Schema.define(version: 2020_05_22_143907) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artifacts", force: :cascade do |t|
    t.string "image"
    t.string "icon"
    t.string "name"
    t.integer "rarity"
    t.string "role"
    t.string "description"
    t.string "skill_description"
    t.float "variable"
    t.string "api_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "auths", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "comment"
    t.bigint "user_id", null: false
    t.bigint "ownership_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ownership_id"], name: "index_comments_on_ownership_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "heros", force: :cascade do |t|
    t.string "name"
    t.integer "rarity"
    t.string "role"
    t.string "zodiac"
    t.string "icon"
    t.string "image"
    t.string "api_id"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ownerships", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "hero_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "builds"
    t.boolean "reviewed"
    t.index ["hero_id"], name: "index_ownerships_on_hero_id"
    t.index ["user_id"], name: "index_ownerships_on_user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "icon"
    t.bigint "hero_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hero_id"], name: "index_skills_on_hero_id"
  end

  create_table "stats", force: :cascade do |t|
    t.integer "attack"
    t.integer "hp"
    t.integer "def"
    t.integer "speed"
    t.float "crit"
    t.float "cdmg"
    t.string "story"
    t.bigint "hero_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hero_id"], name: "index_stats_on_hero_id"
  end

  create_table "suggestions", force: :cascade do |t|
    t.bigint "hero_id", null: false
    t.bigint "artifact_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artifact_id"], name: "index_suggestions_on_artifact_id"
    t.index ["hero_id"], name: "index_suggestions_on_hero_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "user_token"
    t.string "user_type"
  end

  add_foreign_key "comments", "ownerships"
  add_foreign_key "comments", "users"
  add_foreign_key "ownerships", "heros"
  add_foreign_key "ownerships", "users"
  add_foreign_key "skills", "heros"
  add_foreign_key "stats", "heros"
  add_foreign_key "suggestions", "artifacts"
  add_foreign_key "suggestions", "heros"
end
