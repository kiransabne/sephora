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

ActiveRecord::Schema.define(version: 20171210082008) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category_name"
  end

  create_table "categories_products", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_categories_products_on_category_id"
    t.index ["product_id"], name: "index_categories_products_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.text "description"
    t.string "colour"
    t.integer "price"
  end

  create_table "products_sub_categories", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "sub_category_id"
    t.index ["product_id"], name: "index_products_sub_categories_on_product_id"
    t.index ["sub_category_id"], name: "index_products_sub_categories_on_sub_category_id"
  end

  create_table "products_sub_sub_categories", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "sub_sub_category_id"
    t.index ["product_id"], name: "index_products_sub_sub_categories_on_product_id"
    t.index ["sub_sub_category_id"], name: "index_products_sub_sub_categories_on_sub_sub_category_id"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sub_category_name"
    t.integer "category_id"
  end

  create_table "sub_sub_categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sub_sub_category_name"
    t.integer "sub_category_id"
  end

  add_foreign_key "categories_products", "categories"
  add_foreign_key "categories_products", "products"
  add_foreign_key "products_sub_categories", "products"
  add_foreign_key "products_sub_categories", "sub_categories"
  add_foreign_key "products_sub_sub_categories", "products"
  add_foreign_key "products_sub_sub_categories", "sub_sub_categories"
end
