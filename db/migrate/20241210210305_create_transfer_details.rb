class CreateTransferDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :transfer_details do |t|
      t.references :transfer, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :subtotal

      t.timestamps
    end
  end
end
