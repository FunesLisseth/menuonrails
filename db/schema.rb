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

ActiveRecord::Schema.define(version: 20150606225229) do

  create_table "entradas", force: :cascade do |t|
    t.integer  "identrada",   limit: 4
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "lunches", force: :cascade do |t|
    t.string   "name",                  limit: 255
    t.string   "description",           limit: 255
    t.decimal  "price",                             precision: 10
    t.integer  "quantity",              limit: 4
    t.decimal  "pricemenu",                         precision: 10
    t.integer  "tipoplato_id",          limit: 4
    t.integer  "tipomenu_id",           limit: 4
    t.integer  "restaurant_id",         limit: 4
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "fotomenu_file_name",    limit: 255
    t.string   "fotomenu_content_type", limit: 255
    t.integer  "fotomenu_file_size",    limit: 4
    t.datetime "fotomenu_updated_at"
    t.string   "imagen_file_name",      limit: 255
    t.string   "imagen_content_type",   limit: 255
    t.integer  "imagen_file_size",      limit: 4
    t.datetime "imagen_updated_at"
  end

  add_index "lunches", ["restaurant_id"], name: "index_lunches_on_restaurant_id", using: :btree
  add_index "lunches", ["tipomenu_id"], name: "index_lunches_on_tipomenu_id", using: :btree
  add_index "lunches", ["tipoplato_id"], name: "index_lunches_on_tipoplato_id", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "location",    limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "segundos", force: :cascade do |t|
    t.integer  "idsegundo",   limit: 4
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "tipomenus", force: :cascade do |t|
    t.integer  "idtipo",      limit: 4
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "tipoplatos", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_foreign_key "lunches", "restaurants"
  add_foreign_key "lunches", "tipomenus"
  add_foreign_key "lunches", "tipoplatos"
end
