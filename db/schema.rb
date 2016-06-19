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

ActiveRecord::Schema.define(version: 20160619052429) do

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
    t.text     "line1"
    t.text     "line2"
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
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "status"
    t.string   "workflow_state"
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

  create_table "locations", force: :cascade do |t|
    t.string   "address"
    t.string   "name"
    t.string   "place_id"
    t.string   "city"
    t.string   "country"
    t.string   "id_loc"
    t.string   "pincode"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "inquiry_id"
    t.string   "state"
  end

  add_index "locations", ["inquiry_id"], name: "index_locations_on_inquiry_id"

  create_table "survey_answers", force: :cascade do |t|
    t.string   "answer"
    t.integer  "survey_question_id"
    t.integer  "inquiry_id"
    t.integer  "survey_answerable_id"
    t.string   "survey_answerable_type"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "survey_answers", ["inquiry_id"], name: "index_survey_answers_on_inquiry_id"
  add_index "survey_answers", ["survey_answerable_id", "survey_answerable_type"], name: "index_survey_answers_on_sa_type_and_sa_id", unique: true
  add_index "survey_answers", ["survey_question_id"], name: "index_survey_answers_on_survey_question_id"

  create_table "survey_biz_user_answers", force: :cascade do |t|
    t.text     "answer"
    t.integer  "survey_question_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "survey_biz_user_answers", ["survey_question_id"], name: "index_survey_biz_user_answers_on_survey_question_id"

  create_table "survey_items", force: :cascade do |t|
    t.integer  "survey_question_id"
    t.integer  "survey_user_answer_id"
    t.integer  "survey_biz_user_answer_id"
    t.integer  "inquiry_id"
    t.boolean  "visible"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "survey_id"
  end

  add_index "survey_items", ["inquiry_id"], name: "index_survey_items_on_inquiry_id"
  add_index "survey_items", ["survey_biz_user_answer_id"], name: "index_survey_items_on_survey_biz_user_answer_id"
  add_index "survey_items", ["survey_id"], name: "index_survey_items_on_survey_id"
  add_index "survey_items", ["survey_question_id"], name: "index_survey_items_on_survey_question_id"
  add_index "survey_items", ["survey_user_answer_id"], name: "index_survey_items_on_survey_user_answer_id"

  create_table "survey_questions", force: :cascade do |t|
    t.string   "title"
    t.integer  "business_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "global"
  end

  add_index "survey_questions", ["business_id"], name: "index_survey_questions_on_business_id"

  create_table "survey_user_answers", force: :cascade do |t|
    t.text     "answer"
    t.integer  "survey_question_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "survey_user_answers", ["survey_question_id"], name: "index_survey_user_answers_on_survey_question_id"

  create_table "surveys", force: :cascade do |t|
    t.integer  "inquiry_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "surveys", ["inquiry_id"], name: "index_surveys_on_inquiry_id"

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
