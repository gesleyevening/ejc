class Financeiro < ApplicationRecord
    
    validates_presence_of :dta_lancamento, message: 'Data de lançamento deve ser informado!'
    validates_presence_of :valor, message: 'Valor deve ser informado!'
    validates_presence_of :tipo_financeiro_id, message: 'O tipo deve ser informado!'
    
end
