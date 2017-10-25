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

ActiveRecord::Schema.define(version: 20171025103648) do

  create_table "articles", force: :cascade do |t|
    t.integer "rating_id"
    t.string "title"
    t.date "date"
    t.string "source"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interests", force: :cascade do |t|
    t.integer "location_id"
    t.boolean "politics"
    t.boolean "sports"
    t.boolean "economy"
    t.boolean "weather"
    t.boolean "local"
    t.boolean "national"
    t.boolean "world"
    t.boolean "gadget"
    t.boolean "fashion"
    t.boolean "lifestyle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "country"
    t.string "city"
    t.integer "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "rating"
    t.string "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saved_articles", force: :cascade do |t|
    t.integer "article_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "interest_id"
    t.integer "saved_article_id"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.boolean "admin?"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
