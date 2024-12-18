class CreateQuotations < ActiveRecord::Migration[7.0]
  def change
    create_table :quotations do |t|
      t.references :client, null: false, foreign_key: true
      t.datetime :date
      t.decimal :total

      t.timestamps
    end
  end
end
