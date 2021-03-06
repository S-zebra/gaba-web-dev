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

ActiveRecord::Schema.define(version: 2018_08_06_062339) do

  create_table "accounts", force: :cascade do |t|
    t.string "user_id", null: false
    t.string "disp_name"
    t.string "bio"
    t.string "location"
    t.binary "icon", limit: 10485760
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "account_id", null: false
    t.integer "post_id"
    t.text "body", limit: 200
    t.integer "likes", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_posts_on_account_id"
    t.index ["post_id"], name: "index_posts_on_post_id"
  end

end
