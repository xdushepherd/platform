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

ActiveRecord::Schema.define(version: 20140316032542) do

  create_table "instruments", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "unit_belongs_to"
    t.datetime "date_producted"
    t.datetime "date_purchased"
    t.string   "brand"
    t.string   "type_belongs_to"
    t.integer  "price_once"
    t.string   "producted_factory"
    t.string   "purchased_price"
    t.string   "adddress"
    t.string   "specification"
  end

  create_table "reservations", force: true do |t|
    t.integer  "ser_number"
    t.float    "price"
    t.integer  "user_id"
    t.integer  "status",        default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "instrument_id"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "timetables", force: true do |t|
    t.integer  "t1"
    t.integer  "t2"
    t.integer  "t3"
    t.integer  "t4"
    t.integer  "t5"
    t.integer  "t6"
    t.integer  "t7"
    t.integer  "t8"
    t.integer  "t9"
    t.integer  "t10"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "instrument_id"
    t.integer  "reservation_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "unit_belongs_to"
    t.integer  "expert",          default: 0
    t.integer  "if_expert",       default: 0
    t.string   "certification"
    t.string   "tel"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

end
