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

ActiveRecord::Schema.define(version: 20160519164624) do

  create_table "answers", force: :cascade do |t|
    t.string   "body"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "away_players", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "position",   null: false
    t.integer  "game_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "home",                       null: false
    t.string   "away",                       null: false
    t.boolean  "over",       default: false
    t.string   "sport"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "guesses", force: :cascade do |t|
    t.string   "player_name"
    t.boolean  "correct",          default: false
    t.integer  "user_id"
    t.integer  "question_id"
    t.integer  "hit_challenge_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "hit_challenges", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "inning"
    t.boolean  "over",       default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "hit_guesses", force: :cascade do |t|
    t.string   "pos_c"
    t.string   "pos_1b"
    t.string   "pos_2b"
    t.string   "pos_3b"
    t.string   "pos_ss"
    t.string   "pos_of1"
    t.string   "pos_of2"
    t.string   "pos_of3"
    t.string   "pos_dh"
    t.string   "total_hits"
    t.integer  "hit_challenge_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "home_players", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "position",   null: false
    t.integer  "game_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "body"
    t.integer  "hit_challenge_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                       null: false
    t.string   "email",                      null: false
    t.string   "company",                    null: false
    t.string   "title"
    t.boolean  "admin",      default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
