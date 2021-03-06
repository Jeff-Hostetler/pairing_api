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

ActiveRecord::Schema.define(version: 20171026214139) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flavors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_flavors", force: :cascade do |t|
    t.bigint "food_id"
    t.bigint "flavor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flavor_id"], name: "index_food_flavors_on_flavor_id"
    t.index ["food_id"], name: "index_food_flavors_on_food_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wine_flavors", force: :cascade do |t|
    t.bigint "wine_id"
    t.bigint "flavor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flavor_id"], name: "index_wine_flavors_on_flavor_id"
    t.index ["wine_id"], name: "index_wine_flavors_on_wine_id"
  end

  create_table "wine_regions", force: :cascade do |t|
    t.bigint "wine_id"
    t.bigint "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_wine_regions_on_region_id"
    t.index ["wine_id"], name: "index_wine_regions_on_wine_id"
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
