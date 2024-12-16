class CreateReceipts < ActiveRecord::Migration[7.0]
  def change
    create_table :receipts do |t|
      t.references :payment, null: false, foreign_key: true
      t.datetime :date
      t.decimal :amount
      t.string :description

      t.timestamps
    end
  end
end
