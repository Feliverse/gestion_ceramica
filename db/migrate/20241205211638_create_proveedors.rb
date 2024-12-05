class CreateProveedors < ActiveRecord::Migration[7.0]
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.string :contacto
      t.string :direccion

      t.timestamps
    end
  end
end
