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

ActiveRecord::Schema.define(version: 20150507181543) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deals", force: :cascade do |t|
    t.string   "biz_name"
    t.string   "biz_address"
    t.string   "biz_city"
    t.string   "biz_state"
    t.string   "biz_zip"
    t.string   "biz_phone"
    t.text     "deal_url"
    t.string   "deal_id"
    t.string   "deal_title"
    t.text     "deal_desc"
    t.text     "deal_disclaim"
    t.string   "expiration"
    t.text     "deal_image"
    t.text     "deal_image_big"
    t.text     "deal_image_small"
    t.text     "logo_image"
    t.string   "category"
    t.string   "subcategory"
    t.string   "provider"
    t.string   "deal_price"
    t.string   "original_price"
    t.string   "savings_amount"
    t.string   "savings_percent"
    t.string   "total_num_deals"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deals_users", id: false, force: :cascade do |t|
    t.integer "deal_id", null: false
    t.integer "user_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "zipcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
