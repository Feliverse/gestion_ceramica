class CreateSaleDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :sale_details do |t|
      t.references :sale, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.string :product_name
      t.integer :quantity
      t.string :unit
      t.decimal :unit_price
      t.decimal :total_price
      t.string :total_price_literal
      t.integer :boxes
      t.decimal :total_weight

      t.timestamps
    end
  end
end
