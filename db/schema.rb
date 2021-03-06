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

ActiveRecord::Schema.define(version: 20160321012930) do

  create_table "attendees", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "gender"
    t.text     "interests"
    t.integer  "age"
    t.string   "profession"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attendees_conferences", force: :cascade do |t|
    t.string "attendee_id"
    t.string "conference_id"
  end

  create_table "conferences", force: :cascade do |t|
    t.string   "title"
    t.string   "theme"
    t.string   "location"
    t.datetime "starting_date"
    t.datetime "ending_date"
    t.float    "cost"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
