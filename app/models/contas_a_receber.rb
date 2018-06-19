class ContasAReceber < ApplicationRecord
    
    #validates_presence_of :data_lancamento
    
    validates :descricao, presence: {message: 'deve conter uma descrição!'},
                          length: {in: 10..100, message: 'deve conter entre 10 e 100 caracteres!'}
                      
    validates :valor, presence: true, :numericality => {:greater_than => 0,  message: 'valor não pode ser zero ou negativo!' }
    
end
