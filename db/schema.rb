# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_06_094903) do

  create_table "colors", force: :cascade do |t|
    t.string "category"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "habit_lists", force: :cascade do |t|
    t.integer "userid"
    t.integer "habit_no"
    t.string "habit"
    t.integer "count"
    t.integer "donehabit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "habit_records", force: :cascade do |t|
    t.integer "userid"
    t.integer "habit_no"
    t.string "habit"
    t.date "date"
    t.integer "done"
    t.integer "count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "todo_lists", force: :cascade do |t|
    t.string "class1"
    t.string "class2"
    t.integer "todo_no"
    t.integer "project_no"
    t.string "todo"
    t.date "deadline"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "mail"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "work_lists", force: :cascade do |t|
    t.integer "project_no"
    t.string "project"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
