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

ActiveRecord::Schema.define(version: 20160630101202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id", using: :btree

  create_table "biz_users", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "mobile"
    t.string   "salutation"
    t.string   "password"
    t.integer  "business_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "password_digest"
  end

  add_index "biz_users", ["business_id"], name: "index_biz_users_on_business_id", using: :btree

  create_table "businesses", force: :cascade do |t|
    t.string   "name"
    t.text     "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "website"
  end

  add_index "businesses", ["website"], name: "index_businesses_on_website", using: :btree

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "userable_id"
    t.string   "userable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "comments", ["commentable_type", "commentable_id"], name: "comments_commentable_index", using: :btree
  add_index "comments", ["userable_type", "userable_id"], name: "comments_userable_index", using: :btree

  create_table "inquiries", force: :cascade do |t|
    t.string   "token"
    t.integer  "business_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "status"
    t.string   "workflow_state"
  end

  add_index "inquiries", ["business_id"], name: "index_inquiries_on_business_id", using: :btree
  add_index "inquiries", ["user_id"], name: "index_inquiries_on_user_id", using: :btree

  create_table "inquiry_answers", force: :cascade do |t|
    t.string   "answer"
    t.integer  "inquiry_question_id"
    t.integer  "inquiry_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "inquiry_answers", ["inquiry_id"], name: "index_inquiry_answers_on_inquiry_id", using: :btree
  add_index "inquiry_answers", ["inquiry_question_id"], name: "index_inquiry_answers_on_inquiry_question_id", using: :btree

  create_table "inquiry_questions", force: :cascade do |t|
    t.string   "title"
    t.integer  "business_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "inquiry_questions", ["business_id"], name: "index_inquiry_questions_on_business_id", using: :btree

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

  add_index "locations", ["inquiry_id"], name: "index_locations_on_inquiry_id", using: :btree

  create_table "srvy_data_types_item_templates", id: false, force: :cascade do |t|
    t.integer "survey_data_type_id"
    t.integer "survey_item_template_id"
  end

  add_index "srvy_data_types_item_templates", ["survey_data_type_id", "survey_item_template_id"], name: "sdt_item_templates_index", unique: true, using: :btree

  create_table "survey_biz_user_answers", force: :cascade do |t|
    t.text     "answer"
    t.integer  "survey_question_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "survey_biz_user_answers", ["survey_question_id"], name: "index_survey_biz_user_answers_on_survey_question_id", using: :btree

  create_table "survey_data_types", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "survey_data_types_items", id: false, force: :cascade do |t|
    t.integer "survey_data_type_id"
    t.integer "survey_item_id"
  end

  add_index "survey_data_types_items", ["survey_data_type_id", "survey_item_id"], name: "survey_data_types_items_index", unique: true, using: :btree

  create_table "survey_item_categories", force: :cascade do |t|
    t.string   "title"
    t.integer  "survey_template_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "survey_id"
  end

  add_index "survey_item_categories", ["survey_id"], name: "index_survey_item_categories_on_survey_id", using: :btree
  add_index "survey_item_categories", ["survey_template_id"], name: "index_survey_item_categories_on_survey_template_id", using: :btree

  create_table "survey_item_category_templates", force: :cascade do |t|
    t.string   "title"
    t.integer  "survey_template_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "survey_item_category_templates", ["survey_template_id"], name: "sict_st_index", using: :btree

  create_table "survey_item_templates", force: :cascade do |t|
    t.string   "question_title"
    t.text     "description"
    t.integer  "survey_template_id"
    t.integer  "srvy_item_category_template_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "survey_item_templates", ["srvy_item_category_template_id"], name: "SICT_SIT_index", using: :btree
  add_index "survey_item_templates", ["survey_template_id"], name: "index_survey_item_templates_on_survey_template_id", using: :btree

  create_table "survey_items", force: :cascade do |t|
    t.integer  "survey_question_id"
    t.integer  "survey_user_answer_id"
    t.integer  "survey_biz_user_answer_id"
    t.integer  "inquiry_id"
    t.boolean  "visible"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "survey_id"
    t.string   "status"
    t.integer  "survey_item_category_id"
    t.string   "title"
  end

  add_index "survey_items", ["inquiry_id"], name: "index_survey_items_on_inquiry_id", using: :btree
  add_index "survey_items", ["survey_biz_user_answer_id"], name: "index_survey_items_on_survey_biz_user_answer_id", using: :btree
  add_index "survey_items", ["survey_id"], name: "index_survey_items_on_survey_id", using: :btree
  add_index "survey_items", ["survey_item_category_id"], name: "index_survey_items_on_survey_item_category_id", using: :btree
  add_index "survey_items", ["survey_question_id"], name: "index_survey_items_on_survey_question_id", using: :btree
  add_index "survey_items", ["survey_user_answer_id"], name: "index_survey_items_on_survey_user_answer_id", using: :btree

  create_table "survey_questions", force: :cascade do |t|
    t.string   "title"
    t.integer  "business_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "global"
  end

  add_index "survey_questions", ["business_id"], name: "index_survey_questions_on_business_id", using: :btree

  create_table "survey_templates", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "surveyable_id"
    t.string   "surveyable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "survey_templates", ["surveyable_type", "surveyable_id"], name: "index_survey_templates_on_surveyable_type_and_surveyable_id", using: :btree

  create_table "survey_user_answers", force: :cascade do |t|
    t.text     "answer"
    t.integer  "survey_question_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "survey_user_answers", ["survey_question_id"], name: "index_survey_user_answers_on_survey_question_id", using: :btree

  create_table "surveys", force: :cascade do |t|
    t.integer  "inquiry_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "surveys", ["inquiry_id"], name: "index_surveys_on_inquiry_id", using: :btree

  create_table "systems", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "mobile"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "salutation"
    t.string   "password"
    t.text     "password_digest"
    t.integer  "business_id"
  end

  add_index "users", ["business_id"], name: "index_users_on_business_id", using: :btree

  add_foreign_key "addresses", "users"
  add_foreign_key "biz_users", "businesses"
  add_foreign_key "inquiries", "businesses"
  add_foreign_key "inquiries", "users"
  add_foreign_key "inquiry_answers", "inquiries"
  add_foreign_key "inquiry_answers", "inquiry_questions"
  add_foreign_key "inquiry_questions", "businesses"
  add_foreign_key "locations", "inquiries"
  add_foreign_key "survey_biz_user_answers", "survey_questions"
  add_foreign_key "survey_item_categories", "survey_templates"
  add_foreign_key "survey_item_categories", "surveys"
  add_foreign_key "survey_item_category_templates", "survey_templates"
  add_foreign_key "survey_item_templates", "survey_templates"
  add_foreign_key "survey_items", "inquiries"
  add_foreign_key "survey_items", "survey_biz_user_answers"
  add_foreign_key "survey_items", "survey_item_categories"
  add_foreign_key "survey_items", "survey_questions"
  add_foreign_key "survey_items", "survey_user_answers"
  add_foreign_key "survey_items", "surveys"
  add_foreign_key "survey_questions", "businesses"
  add_foreign_key "survey_user_answers", "survey_questions"
  add_foreign_key "surveys", "inquiries"
  add_foreign_key "users", "businesses"
end
