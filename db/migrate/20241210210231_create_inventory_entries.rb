class CreateInventoryEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_entries do |t|
      t.references :warehouse, null: false, foreign_key: true
      t.datetime :date
      t.decimal :total

      t.timestamps
    end
  end
end
