class Equipe < ApplicationRecord
    
    validates_presence_of :ano, message: 'Um ano deve ser imformado!'
    validates_presence_of :nome, message: 'Um nome deve ser infomado!'
    
end
