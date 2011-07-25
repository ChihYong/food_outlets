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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110725171530) do

  create_table "canteens", :force => true do |t|
    t.string   "name"
    t.text     "location"
    t.integer  "no_of_stalls"
    t.text     "operating_hours"
    t.string   "image_url"
    t.text     "announcement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "outlets", :force => true do |t|
    t.string   "name"
    t.text     "location"
    t.text     "operating_hours"
    t.text     "contact"
    t.string   "image_url"
    t.text     "announcements"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stalls", :force => true do |t|
    t.string   "name"
    t.text     "location"
    t.string   "category"
    t.string   "food_type"
    t.text     "operating_hours"
    t.text     "price_range"
    t.string   "image_url"
    t.text     "announcement"
    t.integer  "canteen_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
