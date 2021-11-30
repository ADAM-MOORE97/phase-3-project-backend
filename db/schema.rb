# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_15_201008) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "item_type"
    t.string "name"
    t.integer "cost"
  end

  create_table "loans", force: :cascade do |t|
    t.integer "person_id"
    t.integer "item_id"
    t.datetime "created_by"
    t.datetime "updated_by"
    t.integer "current_value"
    t.integer "term"
    t.float "interest_rate"
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "phone_number"
    t.string "address"
    t.string "email"
    t.date "DOB"
    t.string "gender"
    t.string "username"
    t.string "password"
  end

end
