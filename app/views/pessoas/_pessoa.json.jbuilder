json.extract! pessoa, :id, :nom_pessoa, :dta_nascimento, :num_ano_inicial, :des_endereco, :num_telefone, :num_celular, :des_email, :observacao, :tipo_pessoa, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
