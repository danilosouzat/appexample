json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :email, :cpf, :obs, :aniversario
  json.url cliente_url(cliente, format: :json)
end
