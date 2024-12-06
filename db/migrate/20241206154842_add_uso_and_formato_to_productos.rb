class AddUsoAndFormatoToProductos < ActiveRecord::Migration[7.0]
  def change
    add_column :productos, :uso, :string
    add_column :productos, :formato, :string
  end
end
