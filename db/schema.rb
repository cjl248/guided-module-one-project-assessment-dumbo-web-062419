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
    t.string "eye_color"
    t.string "fur_color"
    t.string "is_healthy"
  end

  create_table "reports", force: :cascade do |t|
    t.integer "month"
    t.string "title"
    t.string "city"
    t.integer "user_id"
    t.integer "animal_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "love_animals"
  end
  
end
