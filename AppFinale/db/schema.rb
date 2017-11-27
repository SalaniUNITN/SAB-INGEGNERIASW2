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

ActiveRecord::Schema.define(version: 20171127092409) do

  create_table "add_hours", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "Hourly_Wage"
    t.string "NHour"
    t.string "Paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "p_iva"
    t.string "city"
    t.string "street"
    t.string "cap"
    t.string "street_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hourname_users", force: :cascade do |t|
    t.string "email"
    t.string "Hourly_Wage"
    t.string "Nhour"
    t.string "Paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hours", force: :cascade do |t|
    t.string "name_user"
    t.string "email"
    t.string "hourly_wage"
    t.string "NHour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "Paid"
  end

  create_table "invoices", force: :cascade do |t|
    t.string "name"
    t.string "p_ivatotal"
    t.string "bill"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "Name"
    t.string "Surname"
    t.string "EMail"
    t.string "Telephone"
    t.string "Partita_Iva"
    t.string "CF"
    t.string "Street_name"
    t.string "cap"
    t.string "city"
    t.string "street_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
