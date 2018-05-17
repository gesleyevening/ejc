class ContasAPagar < ApplicationRecord
    
    validates_presence_of :data_lancamento
    validates_presence_of :descricao
    validates_presence_of :valor
    
end
