json.array!(@lojas) do |loja|
  json.extract! loja, :id, :nome, :cnpj, :enderereco, :beirro, :cidade, :estado, :telefone
  json.url loja_url(loja, format: :json)
end
