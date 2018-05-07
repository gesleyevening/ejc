class Evento < ApplicationRecord
    
    validates_presence_of :titulo, message: 'Nome do evennto deve ser informado!'
    validates_presence_of :dta_evento, message: 'Data do evento deve ser informada!'
    
end
