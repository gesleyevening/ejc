json.extract! contas_a_receber, :id, :data_lancamento, :descricao, :valor, :created_at, :updated_at
json.url contas_a_receber_url(contas_a_receber, format: :json)
