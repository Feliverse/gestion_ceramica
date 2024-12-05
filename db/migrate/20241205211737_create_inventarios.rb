class CreateInventarios < ActiveRecord::Migration[7.0]
  def change
    create_table :inventarios do |t|
      t.references :producto, null: false, foreign_key: true
      t.integer :cajas_completas
      t.integer :piezas_sueltas
      t.float :area_total_m2

      t.timestamps
    end
  end
end
