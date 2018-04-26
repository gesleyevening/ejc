class TipoFinanceiro < ApplicationRecord
    
     validates_presence_of :des_tipo_financeiro, message: 'O tipo deve ser informado!'
    
end
