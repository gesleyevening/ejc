class ContasAPagar < ApplicationRecord
    
    #validates_presence_of :data_lancamento

    
    validates :descricao, presence: {message: 'deve conter uma descrição!'},
                          length: {in: 10..100, message: 'deve conter entre 10 e 100 caracteres!'}
                      
    validates_presence_of :valor, message: 'valor deve ser informado!'
    
end
