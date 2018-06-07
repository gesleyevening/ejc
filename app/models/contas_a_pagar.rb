class ContasAPagar < ApplicationRecord
    
    before_create :validate_values
    
    #validates_presence_of :data_lancamento
    
    validates :descricao, presence: {message: 'deve conter uma descrição!'},
                          length: {in: 10..100, message: 'deve conter entre 10 e 100 caracteres!'}
                      
    validates :valor, presence: true, :numericality => {:greater_than => 2000,  message: 'valor não pode ser zero ou negativo!' }
    
end

#https://stackoverflow.com/questions/32519096/rails-admin-date-add-more-accepting-formats
