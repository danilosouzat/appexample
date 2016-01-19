class CreateLojas < ActiveRecord::Migration
  def change
    create_table :lojas do |t|
      t.string :nome
      t.string :cnpj
      t.string :enderereco
      t.string :beirro
      t.string :cidade
      t.string :estado
      t.string :telefone

      t.timestamps
    end
  end
end
