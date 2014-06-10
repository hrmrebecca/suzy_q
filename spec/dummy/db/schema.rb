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

ActiveRecord::Schema.define(version: 20140610184019) do

  create_table "suzy_q_people", force: true do |t|
    t.string   "type",            null: false
    t.integer  "personable_id"
    t.string   "personable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suzy_q_queue_types", force: true do |t|
    t.string   "label",        null: false
    t.string   "partial_name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suzy_q_queues", force: true do |t|
    t.string   "status",        null: false
    t.date     "completed_on"
    t.string   "description",   null: false
    t.integer  "queue_type_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suzy_q_tasks", force: true do |t|
    t.string   "status",               null: false
    t.date     "completed_on"
    t.integer  "queue_id",             null: false
    t.integer  "assigned_to_id",       null: false
    t.integer  "created_from_task_id"
    t.integer  "taskable_id"
    t.string   "taskable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
