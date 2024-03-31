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

ActiveRecord::Schema.define(version: 2024_03_04_045509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gender", primary_key: "gender_id", id: :serial, force: :cascade do |t|
    t.string "gender", limit: 10, null: false
  end

  create_table "p_corp", primary_key: "p_corp_id", id: { type: :serial, precision: 10 }, force: :cascade do |t|
    t.decimal "p_user_id", precision: 10, null: false
    t.string "name", limit: 40, null: false
    t.string "about", limit: 1000
    t.string "description", limit: 1000
    t.string "memo", limit: 1000
    t.string "motivation", limit: 1000
    t.string "url", limit: 100
    t.datetime "created", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.integer "status_id"
    t.string "address", limit: 100
  end

  create_table "p_task", primary_key: "p_task_id", id: { type: :serial, precision: 10 }, force: :cascade do |t|
    t.decimal "p_user_id", precision: 10, null: false
    t.string "title", limit: 50, null: false
    t.string "detail", limit: 1000
    t.datetime "deadline"
    t.string "url", limit: 100
    t.datetime "created", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.decimal "p_corp_id", precision: 10
    t.string "isdone", limit: 1, default: "N", null: false
    t.string "address", limit: 100
  end

  create_table "p_user", primary_key: "p_user_id", id: { type: :serial, precision: 10 }, force: :cascade do |t|
    t.string "firstname", limit: 50, null: false
    t.string "lastname", limit: 50, null: false
    t.date "birthday"
    t.decimal "post1", precision: 3
    t.decimal "post2", precision: 4
    t.string "city"
    t.string "address1", limit: 50
    t.string "address2", limit: 50
    t.string "mail", limit: 50
    t.string "phone", limit: 12
    t.string "background1", limit: 100
    t.string "background2", limit: 100
    t.string "background3", limit: 100
    t.string "background4", limit: 100
    t.string "background5", limit: 100
    t.string "background6", limit: 100
    t.string "background7", limit: 100
    t.string "background8", limit: 100
    t.string "background9", limit: 100
    t.string "background10", limit: 100
    t.string "licence1", limit: 100
    t.string "licence2", limit: 100
    t.string "licence3", limit: 100
    t.string "licence4", limit: 100
    t.string "licence5", limit: 100
    t.datetime "created", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "password", limit: 40
    t.string "ispublic", limit: 1, default: "N"
    t.text "password_digest"
    t.integer "prefecture_id"
    t.integer "gender_id"
  end

  create_table "prefecture", primary_key: "prefecture_id", id: :serial, force: :cascade do |t|
    t.string "prefecture", limit: 10, null: false
  end

  create_table "samples", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "status", primary_key: "status_id", id: :serial, force: :cascade do |t|
    t.string "status", limit: 10, null: false
  end

  add_foreign_key "p_corp", "p_user", primary_key: "p_user_id", name: "p_corp_p_user_id_fkey"
  add_foreign_key "p_corp", "status", primary_key: "status_id", name: "p_corp_status_id_fkey"
  add_foreign_key "p_task", "p_corp", primary_key: "p_corp_id", name: "p_task_p_corp_id_fkey"
  add_foreign_key "p_task", "p_user", primary_key: "p_user_id", name: "p_task_p_user_id_fkey"
  add_foreign_key "p_user", "gender", primary_key: "gender_id", name: "p_user_gender_id_fkey"
  add_foreign_key "p_user", "prefecture", primary_key: "prefecture_id", name: "p_user_prefecture_id_fkey"
end
