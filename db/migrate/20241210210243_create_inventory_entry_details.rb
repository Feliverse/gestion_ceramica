class CreateInventoryEntryDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_entry_details do |t|
      t.references :inventory_entry, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :subtotal

      t.timestamps
    end
  end
end
