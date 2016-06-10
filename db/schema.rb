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

ActiveRecord::Schema.define(version: 20160609163420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer  "choice"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "away_players", force: :cascade do |t|
    t.string   "name",                    null: false
    t.string   "position",                null: false
    t.string   "batting_avg",             null: false
    t.integer  "at_bat",      default: 0
    t.integer  "game_id",                 null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "title"
    t.string   "home",                      null: false
    t.string   "away",                      null: false
    t.boolean  "active",     default: true
    t.string   "sport"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "hit_challenges", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "suite_num",                  null: false
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
    t.string   "pos_lf"
    t.string   "pos_rf"
    t.string   "pos_cf"
    t.string   "pos_dh"
    t.string   "away_pos_c"
    t.string   "away_pos_1b"
    t.string   "away_pos_2b"
    t.string   "away_pos_3b"
    t.string   "away_pos_ss"
    t.string   "away_pos_lf"
    t.string   "away_pos_rf"
    t.string   "away_pos_cf"
    t.string   "away_pos_dh"
    t.integer  "total_hits"
    t.integer  "hit_challenge_id"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "home_players", force: :cascade do |t|
    t.string   "name",                    null: false
    t.string   "position",                null: false
    t.string   "batting_avg",             null: false
    t.integer  "at_bat",      default: 0
    t.integer  "game_id",                 null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "prop_bets", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "suite_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "body",        null: false
    t.string   "choice1",     null: false
    t.string   "choice2",     null: false
    t.integer  "prop_bet_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                       null: false
    t.string   "email",                      null: false
    t.string   "company",                    null: false
    t.string   "title"
    t.integer  "suite_num",                  null: false
    t.boolean  "admin",      default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
