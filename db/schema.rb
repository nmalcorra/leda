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

ActiveRecord::Schema.define(version: 20160913054804) do

  create_table "cities", force: :cascade do |t|
    t.text    "name",        limit: 65535
    t.integer "cp",          limit: 4
    t.integer "province_id", limit: 4
  end

  create_table "ciudades", force: :cascade do |t|
    t.text    "name",        limit: 65535, null: false
    t.integer "cp",          limit: 4,     null: false
    t.integer "province_id", limit: 4,     null: false
  end

  add_index "ciudades", ["cp"], name: "cp", using: :btree
  add_index "ciudades", ["id"], name: "id", using: :btree
  add_index "ciudades", ["id"], name: "id_2", using: :btree
  add_index "ciudades", ["id"], name: "id_3", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "description", limit: 255
    t.float    "price",       limit: 24
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.text "name", limit: 65535, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "role",                   limit: 255
    t.string   "name",                   limit: 255
    t.string   "surname",                limit: 255
    t.string   "address",                limit: 255
    t.integer  "phone",                  limit: 4
    t.string   "city",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
