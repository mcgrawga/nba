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

ActiveRecord::Schema.define(version: 20140424170126) do

  create_table "brackets", force: true do |t|
    t.integer  "round2_team1"
    t.integer  "round2_team2"
    t.integer  "round2_team3"
    t.integer  "round2_team4"
    t.integer  "round2_team5"
    t.integer  "round2_team6"
    t.integer  "round2_team7"
    t.integer  "round2_team8"
    t.integer  "round2_team9"
    t.integer  "round2_team10"
    t.integer  "round2_team11"
    t.integer  "round2_team12"
    t.integer  "round2_team13"
    t.integer  "round2_team14"
    t.integer  "round2_team15"
    t.integer  "round2_team16"
    t.integer  "round3_team1"
    t.integer  "round3_team2"
    t.integer  "round3_team3"
    t.integer  "round3_team4"
    t.integer  "round3_team5"
    t.integer  "round3_team6"
    t.integer  "round3_team7"
    t.integer  "round3_team8"
    t.integer  "round4_team1"
    t.integer  "round4_team2"
    t.integer  "round4_team3"
    t.integer  "round4_team4"
    t.integer  "round5_team1"
    t.integer  "round5_team2"
    t.integer  "round6_team1"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cutoff_dates", force: true do |t|
    t.datetime "dt_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "seat"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "record"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pool_name"
    t.integer  "is_admin"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "is_paid"
    t.integer  "player_limit"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
