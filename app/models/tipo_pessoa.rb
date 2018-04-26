class TipoPessoa < ApplicationRecord
    
    validates_presence_of :des_tipo_pessoa, message: 'O tipo de pessoa deve ser informado!'
    
end
