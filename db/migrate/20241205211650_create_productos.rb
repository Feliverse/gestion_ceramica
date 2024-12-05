class CreateProductos < ActiveRecord::Migration[7.0]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :categoria
      t.text :descripcion
      t.integer :unidades_por_caja
      t.float :area_por_caja
      t.float :precio_por_m2
      t.references :proveedor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
