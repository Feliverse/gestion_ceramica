class CreateVenta < ActiveRecord::Migration[7.0]
  def change
    create_table :venta do |t|
      t.date :fecha
      t.references :cliente, null: false, foreign_key: true
      t.references :producto, null: false, foreign_key: true
      t.float :cantidad_m2
      t.integer :piezas_vendidas
      t.integer :cajas_vendidas
      t.float :total

      t.timestamps
    end
  end
end
