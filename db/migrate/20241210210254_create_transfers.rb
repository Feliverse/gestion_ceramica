class CreateTransfers < ActiveRecord::Migration[7.0]
  def change
    create_table :transfers do |t|
      t.references :origin_warehouse, null: false, foreign_key: { to_table: :warehouses }
      t.references :destination_warehouse, null: false, foreign_key: { to_table: :warehouses }
      t.datetime :transfer_date
      t.timestamps
    end
  end
end
