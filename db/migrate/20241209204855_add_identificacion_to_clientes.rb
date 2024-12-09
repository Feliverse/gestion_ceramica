class AddIdentificacionToClientes < ActiveRecord::Migration[7.0]
  def change
    add_column :clientes, :identificacion, :integer
  end
end
