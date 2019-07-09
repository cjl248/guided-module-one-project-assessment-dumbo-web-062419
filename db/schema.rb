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

ActiveRecord::Schema.define(version: 2019_07_09_080827) do

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "species"
    t.string "breed"
    t.string "fur_color"
    t.string "eye_color"
    t.text "description"
    t.boolean "is_healthy"
    t.datetime "date_last_seen"
    t.boolean "is_found"
  end

  create_table "reports", force: :cascade do |t|
    t.datetime "date"
    t.string "title"
    t.text "content"
    t.string "sighting_suburb"
    t.integer "confidence"
    t.integer "user_id"
    t.integer "animal_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.text "what_would_you_do"
    t.boolean "is_alive"
    t.integer "vision_rating"
    t.boolean "is_animal_lover"
    t.string "phone_number"
    t.string "home_suburb"
  end

end
