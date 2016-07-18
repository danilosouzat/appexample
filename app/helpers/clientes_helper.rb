module ClientesHelper

	def formata_NumeroTelefone(numero)
	   numero.gsub!(/\D/,"")
		  if numero.size > 8
		     num_formatado = "("
		     num_formatado << numero[0..1]
		     num_formatado << ") "
		     num_formatado << numero[2..5]
		     num_formatado << "-"
		     num_formatado << numero[6..9]
		     num_formatado
	      elsif numero.size == 8
	      	 num_formatado = "("
	      	 num_formatado << "xx"
	      	 num_formatado <<  ")"
	      	 num_formatado << " "
	      	 num_formatado << numero[0..3]
	      	 num_formatado << "-"
	      	 num_formatado << numero[4..7]
	      	 num_formatado
	      else
	      	numero
	      end
	end


	def formata_cpf(cpf)
		cpf.gsub!(/\D/,"")
		num_formatado = cpf[0..2]
		num_formatado << "."
		num_formatado << cpf[3..5]
		num_formatado << "."
		num_formatado << cpf[6..8]
		num_formatado << "-"
		num_formatado << cpf[9..10]
		num_formatado
	end

	def first_latter_uppercase(name)
	  new_name = name.split.map(& :capitalize)
	   new_name.each do |n|
	     if n == "Da" || n == "Das" || n == "Do" || n == "Dos" || n == "De"
		   n.downcase!	
	     end
			new_name
		 end
	end
	

end
