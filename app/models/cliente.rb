class Cliente < ActiveRecord::Base
	belongs_to :loja


   validates :loja, presence: true # Valida se o campo está preechido(não permite cadastrar campo em branco)
   validates :cpf, uniqueness: true #Valida se o parametro passado é único no banco(evita duplicidade) 
   validates :telefone, numericality: true #Valida se o parametro passado é um número


   has_attached_file :imagem, styles: { medium: "300x300>", thumb: "100x100>" }
   validates_attachment_content_type :imagem, content_type: /\Aimage\/.*\Z/


   

   def valida_campo_loja
 	 if self.loja_id.blank?
 		"-" * 15
 	 else
 	    Loja.find(self.loja_id).nome 	
     end
   end

   # def valida_campo_loja
   #   if self.loja_id.blank? != true 
   #      Loja.find(self.loja_id).nome
   #   else
   #      self.loja_id
   #   end
   # end


   def valida_campo_obs
   	 if self.obs.blank?
   	 	"-" * 15
   	 else
   	 	self.obs
   	 end
   	
   end


end
