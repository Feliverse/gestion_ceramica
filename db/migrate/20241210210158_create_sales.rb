class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.references :quotation, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.datetime :date
      t.decimal :total
      t.string :payment_status
      t.string :client_name
      t.string :client_ci_nit

      t.timestamps
    end
  end
end
