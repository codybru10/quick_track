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

ActiveRecord::Schema.define(version: 20170309173832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string  "name"
    t.string  "address"
    t.string  "contact_name"
    t.string  "contact_email"
    t.integer "balance"
    t.integer "rate"
    t.string  "contact_number"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "department"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.index ["email"], name: "index_employees_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true, using: :btree
  end

  create_table "invoices", force: :cascade do |t|
    t.integer "client_id"
    t.integer "balance"
    t.date    "date"
  end

  create_table "services", force: :cascade do |t|
    t.string  "name"
    t.date    "date"
    t.string  "description"
    t.integer "client_id"
    t.integer "employee_id"
    t.integer "time"
    t.boolean "paid",        default: false
  end

end
