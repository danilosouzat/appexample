class AddCamposToCliente < ActiveRecord::Migration
  def change
    add_reference :clientes, :loja, index: true
  end
end
