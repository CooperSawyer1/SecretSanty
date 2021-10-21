# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_20_195403) do

  create_table "gift_lists", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gifts", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "gift_list_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "website"
    t.integer "receiver_id"
    t.integer "giver_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users_gift_lists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "gift_list_id"
    t.index ["gift_list_id"], name: "index_users_gift_lists_on_gift_list_id"
    t.index ["user_id"], name: "index_users_gift_lists_on_user_id"
  end

end

# User has a list of gifts that they want
# User can has_one gift list
# Gift List belongs to a user

# User creates a gift
# - get added to user's gift list (gift list id on gift)
# - get associated to requesting user (receive_id on gift)
# - giver will have to be nil at first

# User gives a gift
# Update on the gift (assigning a giver based on who's logged in)
# 
#next mvp steps on the db: 1. remove user_gift_list table, 2. user_id on users table named assigned_santa, 3. user_id on a gift