class Tio < ApplicationRecord
    
    validates_presence_of :nome, message: 'Um nome deve ser informado!'
    validates_presence_of :data_nascimento
    validates_presence_of :ano_inicio
    validates_presence_of :celular
    validates_presence_of :email
    
end
