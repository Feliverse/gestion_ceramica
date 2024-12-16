class CreateCashRegisters < ActiveRecord::Migration[7.0]
  def change
    create_table :cash_registers do |t|
      t.references :sale, null: false, foreign_key: true
      t.datetime :date
      t.decimal :total_amount

      t.timestamps
    end
  end
end
