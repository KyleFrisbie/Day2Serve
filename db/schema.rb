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

ActiveRecord::Schema.define(version: 20160619232414) do

  create_table "projects", force: :cascade do |t|
    t.string   "name",                     limit: 255
    t.string   "point_of_contact",         limit: 255
    t.string   "phone_number",             limit: 255
    t.string   "email",                    limit: 255
    t.integer  "min_number_of_volunteers", limit: 4
    t.integer  "max_number_of_volunteers", limit: 4
    t.text     "project_description",      limit: 65535
    t.string   "location",                 limit: 255
    t.integer  "age_limit",                limit: 4
    t.text     "mission_statement",        limit: 65535
    t.integer  "intensity_level",          limit: 4
    t.text     "additional_directions",    limit: 65535
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.integer  "project_id",   limit: 4
    t.string   "first_name",   limit: 255
    t.string   "last_name",    limit: 255
    t.string   "email",        limit: 255
    t.string   "phone_number", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "volunteers", ["project_id"], name: "index_volunteers_on_project_id", using: :btree

  add_foreign_key "volunteers", "projects"
end
