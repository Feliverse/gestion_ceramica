class CreateTransfers < ActiveRecord::Migration[7.0]
  def change
    create_table :transfers do |t|
      t.references :origin_warehouse, null: false, foreign_key: true
      t.references :destination_warehouse, null: false, foreign_key: true
      t.datetime :date
      t.decimal :total

      t.timestamps
    end
  end
end
