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

ActiveRecord::Schema.define(version: 20160506095546) do

  create_table "boards", force: :cascade do |t|
    t.string   "title"
    t.string   "editor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brokers", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "license"
    t.string   "max_lev"
    t.string   "spread"
    t.string   "min_amo"
    t.string   "tr_fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
    t.string   "capital"
    t.string   "lang"
    t.string   "cur"
    t.string   "order"
    t.string   "min_lot"
    t.string   "max_lot"
    t.string   "cur_pair"
    t.string   "p_met"
    t.string   "b_pro"
    t.string   "state"
    t.string   "jp_sup"
    t.string   "p_ref"
    t.string   "p_fee"
    t.string   "w_fee"
    t.string   "m_fee"
    t.string   "demo"
    t.string   "multi"
    t.string   "sp_met"
    t.string   "tr_sys"
    t.string   "platform"
    t.string   "tr_pos"
    t.string   "gmt"
    t.string   "rollover"
    t.string   "ma_cal"
    t.string   "lo_cut"
    t.string   "both"
    t.string   "ea_lim"
    t.string   "ma_occ"
    t.string   "ca_trs"
    t.string   "st_met"
    t.string   "mo_sup"
    t.string   "support"
    t.string   "design"
    t.string   "feeling"
    t.string   "payment"
  end

  add_index "brokers", ["name"], name: "index_brokers_on_name", unique: true

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "broker_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.string   "support"
    t.string   "design"
    t.string   "feeling"
    t.string   "payment"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "state"
    t.string   "profile"
    t.string   "age"
    t.string   "experience"
    t.string   "prefecture"
    t.string   "image"
    t.string   "image_cache"
    t.string   "remove_image"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "writes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "board_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "writings", force: :cascade do |t|
    t.integer  "board_id"
    t.string   "name"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "user_id"
  end

  add_index "writings", ["board_id"], name: "index_writings_on_board_id"

end
