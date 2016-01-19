class AddAttachmentImagemToClientes < ActiveRecord::Migration
  def self.up
    change_table :clientes do |t|
      t.attachment :imagem
    end
  end

  def self.down
    remove_attachment :clientes, :imagem
  end
end
