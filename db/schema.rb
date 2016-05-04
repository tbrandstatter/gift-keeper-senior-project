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

ActiveRecord::Schema.define(version: 20160504165649) do

  create_table "already_gifted_ideas", force: :cascade do |t|
    t.text     "content"
    t.string   "image"
    t.integer  "giftboard_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "user_id"
  end

  add_index "already_gifted_ideas", ["giftboard_id"], name: "index_already_gifted_ideas_on_giftboard_id"

  create_table "giftboards", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "user_id"
    t.date     "birthday"
  end

  create_table "ideas", force: :cascade do |t|
    t.text     "content"
    t.integer  "giftboard_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "user_id"
    t.string   "image"
  end

  add_index "ideas", ["giftboard_id"], name: "index_ideas_on_giftboard_id"

  create_table "links", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "links", ["user_id"], name: "index_links_on_user_id"

  create_table "shoppings", force: :cascade do |t|
    t.text     "content"
    t.integer  "giftboard_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "shoppings", ["giftboard_id"], name: "index_shoppings_on_giftboard_id"
  add_index "shoppings", ["user_id"], name: "index_shoppings_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
