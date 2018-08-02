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

ActiveRecord::Schema.define(version: 2018_08_02_030323) do

  create_table "external_links", force: :cascade do |t|
    t.string "url"
    t.text "description"
    t.integer "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_external_links_on_listing_id"
  end

  create_table "listings", force: :cascade do |t|
    t.string "company_name"
    t.text "description"
    t.string "job_title"
    t.integer "stage_id"
    t.string "company_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stage_id"], name: "index_listings_on_stage_id"
  end

  create_table "stages", force: :cascade do |t|
    t.string "name"
    t.integer "rank"
    t.boolean "is_active"
    t.boolean "is_deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.integer "stage_id"
    t.integer "listing_id"
    t.datetime "action_date"
    t.boolean "is_complete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_statuses_on_listing_id"
    t.index ["stage_id"], name: "index_statuses_on_stage_id"
  end

end
