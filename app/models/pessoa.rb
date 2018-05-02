class Pessoa < ApplicationRecord
    
    validates_presence_of :nom_pessoa, message: 'Um nome deve ser infomado!'
    #validates_presence_of :dta_nascimento, message: 'Data de nascimento deve ser infomada!'
    validates_presence_of :num_ano_inicial, message: 'Ano de início deve ser infomado!'
    validates_presence_of :des_endereco, message: 'Endereço deve ser infomado!'
    validates_presence_of :num_celular, message: 'Celular deve ser infomado!'
    validates_presence_of :des_email, message: 'Email deve ser infomado!'
    validates_presence_of :tipo_pessoa_id, message: 'Deve ser informado o tipo da pessoa!'
    
    belongs_to :tipo_pessoa
    
end
