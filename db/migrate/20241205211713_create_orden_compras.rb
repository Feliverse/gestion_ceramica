class CreateOrdenCompras < ActiveRecord::Migration[7.0]
  def change
    create_table :orden_compras do |t|
      t.date :fecha
      t.references :proveedor, null: false, foreign_key: true
      t.float :total
      t.string :estado

      t.timestamps
    end
  end
end
