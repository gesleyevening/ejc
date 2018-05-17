json.extract! contas_a_pagar, :id, :data_lancamento, :descricao, :valor, :created_at, :updated_at
json.url contas_a_pagar_url(contas_a_pagar, format: :json)
