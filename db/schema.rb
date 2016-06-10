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

ActiveRecord::Schema.define(version: 20160607051734) do

  create_table "addresses", force: :cascade do |t|
    t.string   "doorno"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "pincode"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id"

  create_table "biz_users", force: :cascade do |t|
    t.string   "salutation"
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "mobile"
    t.string   "password"
    t.integer  "business_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "password_digest"
  end

  add_index "biz_users", ["business_id"], name: "index_biz_users_on_business_id"

  create_table "business_inquiry_basics", force: :cascade do |t|
    t.string   "req_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "businesses", force: :cascade do |t|
    t.string   "name"
    t.text     "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "website"
  end

  add_index "businesses", ["website"], name: "index_businesses_on_website"

  create_table "inquiries", force: :cascade do |t|
    t.string   "token"
    t.integer  "business_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "inquiries", ["business_id"], name: "index_inquiries_on_business_id"
  add_index "inquiries", ["user_id"], name: "index_inquiries_on_user_id"

  create_table "inquiry_answers", force: :cascade do |t|
    t.string   "answer"
    t.integer  "inquiry_question_id"
    t.integer  "inquiry_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "inquiry_answers", ["inquiry_id"], name: "index_inquiry_answers_on_inquiry_id"
  add_index "inquiry_answers", ["inquiry_question_id"], name: "index_inquiry_answers_on_inquiry_question_id"

  create_table "inquiry_questions", force: :cascade do |t|
    t.string   "title"
    t.integer  "business_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "inquiry_questions", ["business_id"], name: "index_inquiry_questions_on_business_id"

  create_table "users", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "mobile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "salutation"
  end

end
