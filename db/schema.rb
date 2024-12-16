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

ActiveRecord::Schema[7.0].define(version: 2024_12_10_210350) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cash_registers", force: :cascade do |t|
    t.bigint "sale_id", null: false
    t.datetime "date"
    t.decimal "total_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sale_id"], name: "index_cash_registers_on_sale_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.string "ci_nit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventory_entries", force: :cascade do |t|
    t.bigint "warehouse_id", null: false
    t.datetime "date"
    t.decimal "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["warehouse_id"], name: "index_inventory_entries_on_warehouse_id"
  end

  create_table "inventory_entry_details", force: :cascade do |t|
    t.bigint "inventory_entry_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.decimal "subtotal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_entry_id"], name: "index_inventory_entry_details_on_inventory_entry_id"
    t.index ["product_id"], name: "index_inventory_entry_details_on_product_id"
  end

  create_table "payments", force: :cascade do |t|
    t.bigint "sale_id", null: false
    t.datetime "date"
    t.decimal "amount"
    t.string "type"
    t.string "method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sale_id"], name: "index_payments_on_sale_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.integer "stock"
    t.string "unit"
    t.decimal "weight_per_box"
    t.decimal "m2_per_box"
    t.integer "pieces_per_box"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotation_details", force: :cascade do |t|
    t.bigint "quotation_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.decimal "unit_price"
    t.decimal "subtotal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_quotation_details_on_product_id"
    t.index ["quotation_id"], name: "index_quotation_details_on_quotation_id"
  end

  create_table "quotations", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.datetime "date"
    t.decimal "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_quotations_on_client_id"
  end

  create_table "receipts", force: :cascade do |t|
    t.bigint "payment_id", null: false
    t.datetime "date"
    t.decimal "amount"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["payment_id"], name: "index_receipts_on_payment_id"
  end

  create_table "remission_notes", force: :cascade do |t|
    t.bigint "sale_id", null: false
    t.bigint "warehouse_id", null: false
    t.datetime "date"
    t.bigint "client_id", null: false
    t.string "client_phone"
    t.string "delivery_address"
    t.string "warehouse_manager"
    t.string "driver"
    t.decimal "total_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_remission_notes_on_client_id"
    t.index ["sale_id"], name: "index_remission_notes_on_sale_id"
    t.index ["warehouse_id"], name: "index_remission_notes_on_warehouse_id"
  end

  create_table "sale_details", force: :cascade do |t|
    t.bigint "sale_id", null: false
    t.bigint "product_id", null: false
    t.string "product_name"
    t.integer "quantity"
    t.string "unit"
    t.decimal "unit_price"
    t.decimal "total_price"
    t.string "total_price_literal"
    t.integer "boxes"
    t.decimal "total_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_sale_details_on_product_id"
    t.index ["sale_id"], name: "index_sale_details_on_sale_id"
  end

  create_table "sales", force: :cascade do |t|
    t.bigint "quotation_id", null: false
    t.bigint "client_id", null: false
    t.datetime "date"
    t.decimal "total"
    t.string "payment_status"
    t.string "client_name"
    t.string "client_ci_nit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_sales_on_client_id"
    t.index ["quotation_id"], name: "index_sales_on_quotation_id"
  end

  create_table "transfer_details", force: :cascade do |t|
    t.bigint "transfer_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.decimal "subtotal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_transfer_details_on_product_id"
    t.index ["transfer_id"], name: "index_transfer_details_on_transfer_id"
  end

  create_table "transfers", force: :cascade do |t|
    t.bigint "origin_warehouse_id", null: false
    t.bigint "destination_warehouse_id", null: false
    t.datetime "transfer_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_warehouse_id"], name: "index_transfers_on_destination_warehouse_id"
    t.index ["origin_warehouse_id"], name: "index_transfers_on_origin_warehouse_id"
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cash_registers", "sales"
  add_foreign_key "inventory_entries", "warehouses"
  add_foreign_key "inventory_entry_details", "inventory_entries"
  add_foreign_key "inventory_entry_details", "products"
  add_foreign_key "payments", "sales"
  add_foreign_key "quotation_details", "products"
  add_foreign_key "quotation_details", "quotations"
  add_foreign_key "quotations", "clients"
  add_foreign_key "receipts", "payments"
  add_foreign_key "remission_notes", "clients"
  add_foreign_key "remission_notes", "sales"
  add_foreign_key "remission_notes", "warehouses"
  add_foreign_key "sale_details", "products"
  add_foreign_key "sale_details", "sales"
  add_foreign_key "sales", "clients"
  add_foreign_key "sales", "quotations"
  add_foreign_key "transfer_details", "products"
  add_foreign_key "transfer_details", "transfers"
  add_foreign_key "transfers", "warehouses", column: "destination_warehouse_id"
  add_foreign_key "transfers", "warehouses", column: "origin_warehouse_id"
end
