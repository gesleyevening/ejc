json.extract! evento, :id, :titulo, :dta_evento, :informacoes, :imagem, :created_at, :updated_at
json.url evento_url(evento, format: :json)
