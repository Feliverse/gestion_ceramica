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

ActiveRecord::Schema[7.0].define(version: 2024_12_06_154842) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "nombre"
    t.string "contacto"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventarios", force: :cascade do |t|
    t.bigint "producto_id", null: false
    t.integer "cajas_completas"
    t.integer "piezas_sueltas"
    t.float "area_total_m2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["producto_id"], name: "index_inventarios_on_producto_id"
  end

  create_table "orden_compras", force: :cascade do |t|
    t.date "fecha"
    t.bigint "proveedor_id", null: false
    t.float "total"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proveedor_id"], name: "index_orden_compras_on_proveedor_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.string "categoria"
    t.text "descripcion"
    t.integer "unidades_por_caja"
    t.float "area_por_caja"
    t.float "precio_por_m2"
    t.bigint "proveedor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "uso"
    t.string "formato"
    t.index ["proveedor_id"], name: "index_productos_on_proveedor_id"
  end

  create_table "proveedors", force: :cascade do |t|
    t.string "nombre"
    t.string "contacto"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venta", force: :cascade do |t|
    t.date "fecha"
    t.bigint "cliente_id", null: false
    t.bigint "producto_id", null: false
    t.float "cantidad_m2"
    t.integer "piezas_vendidas"
    t.integer "cajas_vendidas"
    t.float "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_venta_on_cliente_id"
    t.index ["producto_id"], name: "index_venta_on_producto_id"
  end

  add_foreign_key "inventarios", "productos"
  add_foreign_key "orden_compras", "proveedors"
  add_foreign_key "productos", "proveedors"
  add_foreign_key "venta", "clientes"
  add_foreign_key "venta", "productos"
end
