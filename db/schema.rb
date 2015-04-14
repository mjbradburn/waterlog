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

ActiveRecord::Schema.define(version: 20150413050751) do

  create_table "Secchi_Depths", force: :cascade do |t|
    t.datetime "sample_time"
    t.integer  "secchi_depth_ft"
    t.integer  "weather"
    t.text     "comments"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "lake_id"
  end

  add_index "Secchi_Depths", ["lake_id"], name: "index_secchi_depths_on_lake_id"

  create_table "chloros", force: :cascade do |t|
    t.datetime "sample_time"
    t.integer  "event"
    t.decimal  "comp_sample_depth"
    t.integer  "weather"
    t.text     "comments"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "secchi_depth_id"
    t.integer  "lake_id"
  end

  add_index "chloros", ["lake_id"], name: "index_chloros_on_lake_id"
  add_index "chloros", ["secchi_depth_id"], name: "index_chloros_on_secchi_depth_id"

  create_table "lakes", force: :cascade do |t|
    t.string   "lkname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phosphos", force: :cascade do |t|
    t.datetime "sample_time"
    t.integer  "season"
    t.integer  "weather"
    t.date     "ice_out"
    t.date     "sample_submit"
    t.text     "comments"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "lake_id"
  end

  add_index "phosphos", ["lake_id"], name: "index_phosphos_on_lake_id"

  create_table "samples", force: :cascade do |t|
    t.datetime "time"
    t.decimal  "data",       precision: 5, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "lake_id"
  end

  add_index "samples", ["lake_id"], name: "index_samples_on_lake_id"

end
