class CreateRemissionNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :remission_notes do |t|
      t.references :sale, null: false, foreign_key: true
      t.references :warehouse, null: false, foreign_key: true
      t.datetime :date
      t.references :client, null: false, foreign_key: true
      t.string :client_phone
      t.string :delivery_address
      t.string :warehouse_manager
      t.string :driver
      t.decimal :total_weight

      t.timestamps
    end
  end
end
