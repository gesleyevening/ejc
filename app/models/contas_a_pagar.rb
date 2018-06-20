class ContasAPagar < ApplicationRecord
    
    #before_create :validate_values
    
    #validates_presence_of :data_lancamento

    
    validates_presence_of :descricao, presence: {message: 'deve conter uma descrição!'},
                          length: {in: 10..100, message: 'deve conter entre 10 e 100 caracteres!'}
                      
    validates_presence_of :valor, presence: true, :numericality => {:greater_than => 0,  message: 'valor não pode ser zero ou negativo!' }
    
    
end

#https://stackoverflow.com/questions/32519096/rails-admin-date-add-more-accepting-formats

#https://fontawesome.com/v4.7.0/icons/   //icones

#https://onebitcode.com/criando-um-sistema-administrativo-completo-com-rails-admin-parte-4/