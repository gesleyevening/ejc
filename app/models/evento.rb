class Evento < ApplicationRecord
    
    mount_uploader :foto, FotoUploader
    
    validates :titulo, presence: {message: 'nome do evennto deve ser informado!'},
                       length: {in: 5..100, message: 'deve conter entre 5 e 100 caracteres!'}
    
    #validates_presence_of :dta_evento, message: 'Data do evento deve ser informada!'
    
end
