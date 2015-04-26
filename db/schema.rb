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

ActiveRecord::Schema.define(version: 20150426070356) do

  create_table "course_period_relationships", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "period_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.integer  "year",                                  null: false
    t.integer  "term",                                  null: false
    t.string   "organization_code",                     null: false
    t.string   "department_code"
    t.string   "grade_code"
    t.string   "lecturer_name",                         null: false
    t.string   "name",                                  null: false
    t.string   "english_name"
    t.text     "description"
    t.text     "english_description"
    t.string   "code"
    t.string   "serial_number"
    t.string   "url"
    t.string   "website_url"
    t.boolean  "required",              default: false, null: false
    t.boolean  "full_semester",         default: false, null: false
    t.string   "book_isbn"
    t.string   "unconfirmed_book_name"
    t.datetime "confirmed_at"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "course_period_relationship_id"
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "periods", force: :cascade do |t|
    t.string   "organization_code", null: false
    t.string   "code",              null: false
    t.string   "day",               null: false
    t.string   "start_at",          null: false
    t.string   "end_at",            null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
