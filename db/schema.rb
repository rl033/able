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

ActiveRecord::Schema.define(version: 20151017001935) do

  create_table "accounts", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "accountable_id"
    t.string   "accountable_type"
    t.string   "provider"
    t.string   "uid"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "accounts", ["accountable_type", "accountable_id"], name: "index_accounts_on_accountable_type_and_accountable_id"
  add_index "accounts", ["email"], name: "index_accounts_on_email", unique: true
  add_index "accounts", ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true

  create_table "contributions", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "project_id"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "investments", force: :cascade do |t|
    t.integer  "organization_id"
    t.integer  "project_id"
    t.integer  "amount"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "industry"
    t.string   "about"
    t.string   "year_founded"
    t.string   "business_type"
    t.string   "size"
    t.string   "website"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "project_images", force: :cascade do |t|
    t.string   "caption"
    t.integer  "project_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "industry"
    t.string   "location"
    t.integer  "total_investment"
    t.datetime "start_date"
    t.integer  "views"
    t.integer  "rating"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "school"
    t.string   "location"
    t.string   "industry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
