# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160325221803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

# Could not dump table "moods" because of following StandardError
#   Unknown type 'feeling' for column 'feeling'

  create_table "notes", force: :cascade do |t|
    t.date     "local_date"
    t.text     "body"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "notes", ["organization_id"], name: "index_notes_on_organization_id", using: :btree

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "note_id"
    t.integer  "mood_id"
  end

  add_index "teams", ["mood_id"], name: "index_teams_on_mood_id", using: :btree
  add_index "teams", ["note_id"], name: "index_teams_on_note_id", using: :btree
  add_index "teams", ["organization_id"], name: "index_teams_on_organization_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "name",                           null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
    t.integer  "organization_id"
    t.integer  "team_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["organization_id"], name: "index_users_on_organization_id", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree
  add_index "users", ["team_id"], name: "index_users_on_team_id", using: :btree

  add_foreign_key "moods", "organizations"
  add_foreign_key "notes", "organizations"
  add_foreign_key "teams", "moods"
  add_foreign_key "teams", "notes"
  add_foreign_key "teams", "organizations"
  add_foreign_key "users", "organizations"
  add_foreign_key "users", "teams"
end
