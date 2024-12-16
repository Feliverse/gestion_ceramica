class CreateQuotationDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :quotation_details do |t|
      t.references :quotation, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :unit_price
      t.decimal :subtotal

      t.timestamps
    end
  end
end
