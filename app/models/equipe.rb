class Equipe < ApplicationRecord
    
    validates_presence_of :ano, presence: {message: 'ano deve ser informado!'},
                           numericality: {message: 'deve conter sommente número!'}, #validates_numericality_of valida se foi digitado só número!
                           length: {maximum: 4, message: 'deve conter no máximo 4 números!'}
                           
    #length_of valida ou limita o tamanho ou a quantidade de caracteres informado no campo!
    validates_length_of :ano, minimum: 4, message: 'deve conter no mínimo 4 números!'
    
    validates_presence_of :ano, presence: true, :numericality => {:greater_than => 0,  message: 'ano não pode ser zero ou negativo!' }
    
    validates_presence_of :nome, presence: {message: 'nome deve ser informado!'},
                     length: {in: 5..100, message: 'deve conter entre 5 e 100 caracteres!'}
    
end
