class ClientePolicy 
  
=begin
def index
	usuario.admin?	
end

  class Scope < Scope
    def resolve
      scope
    end
  end
=end


  attr_reader :usuario, :cliente

  def initialize(usuario, cliente)
    @usuario = usuario
    @cliente = cliente
  end

  def index?
    usuario.admin?
  end
end

end
