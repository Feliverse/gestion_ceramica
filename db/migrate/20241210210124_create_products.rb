class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :stock
      t.string :unit
      t.decimal :weight_per_box
      t.decimal :m2_per_box
      t.integer :pieces_per_box

      t.timestamps
    end
  end
end
