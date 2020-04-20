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

ActiveRecord::Schema.define(version: 20200420002029) do

  create_table "logins", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_logins_on_username", unique: true
  end

  create_table "money", force: :cascade do |t|
    t.string "username"
    t.string "category1"
    t.decimal "total1"
    t.decimal "spent1"
    t.string "category2"
    t.decimal "total2"
    t.decimal "spent2"
    t.string "category3"
    t.decimal "total3"
    t.decimal "spent3"
    t.string "category4"
    t.decimal "total4"
    t.decimal "spent4"
    t.string "category5"
    t.decimal "total5"
    t.decimal "spent5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
