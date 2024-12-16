class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.references :sale, null: false, foreign_key: true
      t.datetime :date
      t.decimal :amount
      t.string :type
      t.string :method

      t.timestamps
    end
  end
end
