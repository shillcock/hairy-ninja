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

ActiveRecord::Schema.define(version: 20140122154433) do

  create_table "lessons", force: true do |t|
    t.string   "title"
    t.text     "summary"
    t.integer  "lesson_number"
    t.integer  "workshop_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lessons", ["workshop_id"], name: "index_lessons_on_workshop_id"

  create_table "meetings", force: true do |t|
    t.date     "date"
    t.integer  "lesson_id"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "meetings", ["lesson_id"], name: "index_meetings_on_lesson_id"
  add_index "meetings", ["section_id"], name: "index_meetings_on_section_id"

  create_table "sections", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workshops", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
