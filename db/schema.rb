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

ActiveRecord::Schema[7.0].define(version: 2023_10_06_100900) do
  create_table "real_estate_contents", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "quantity"
    t.integer "real_estate_id", null: false
    t.index ["real_estate_id"], name: "index_real_estate_contents_on_real_estate_id"
  end

  create_table "real_estate_types", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "real_estates", force: :cascade do |t|
    t.decimal "price", precision: 10, scale: 2
    t.string "name"
    t.string "country"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "year_built"
    t.integer "square_size"
    t.integer "real_estate_type_id"
    t.index ["real_estate_type_id"], name: "index_real_estates_on_real_estate_type_id"
  end

  add_foreign_key "real_estate_contents", "real_estates", on_delete: :cascade
  add_foreign_key "real_estates", "real_estate_types", on_delete: :nullify
end
