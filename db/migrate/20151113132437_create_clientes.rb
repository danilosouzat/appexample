class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :email
      t.string :cpf
      t.text :obs
      t.date :aniversario

      t.timestamps
    end
  end
end
