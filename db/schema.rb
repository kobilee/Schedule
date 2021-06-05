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

ActiveRecord::Schema.define(version: 2021_06_05_184715) do

  create_table "class_lists", force: :cascade do |t|
    t.string "course"
    t.string "class_type"
    t.string "short_name"
    t.string "instructor"
    t.string "day"
    t.time "start_time"
    t.integer "class_length"
    t.boolean "section"
    t.string "location"
    t.integer "course_cap"
    t.boolean "view_in_schedule"
    t.boolean "in_schedule"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
