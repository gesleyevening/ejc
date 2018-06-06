class Jovem < ApplicationRecord
    
    validates :nome, presence: {message: 'nome deve ser informado!'},
                     length: {in: 10..100, message: 'deve conter entre 10 e 100 caracteres!'}
    
    #presence_of torna o campo obrigatório!
    #validates_presence_of :data_nascimento
    #validates :data_nascimento, presence: true, :numericality => {:greater_than => 1950,  message: 'Ano de nascimento válido apartir de 1950!' }
    
    validates :ano_inicio, presence: {message: 'ano deve ser informado!'},
                           numericality: {message: 'deve conter sommente número!'}, #validates_numericality_of valida se foi digitado só número!
                           length: {maximum: 4, message: 'deve conter no máximo 4 números!'}
                           
    validates :ano_inicio, presence: true, :numericality => {:greater_than => 2000,  message: 'Ano válido apartir de 2000!' }
                           
    #length_of valida ou limita o tamanho ou a quantidade de caracteres informado no campo!
    validates_length_of :ano_inicio, minimum: 4, message: 'deve conter no mínimo 4 números!'
    
    #validates_length_of :endereco, in: 10..100, message: 'deve conter entre 10 e 100 caracteres!'
                     
    #validates_length_of :telefone, maximum: 10, message: 'deve conter no máximo 10 números!'
    #validates_length_of :telefone, minimum: 10, message: 'deve conter no mínimo 10 números!'
                    
    validates :celular, presence: {message: 'não pode ser deixado em branco!'},
                        numericality: {message: 'deve conter somente número!'},
                        length: {minimum: 11, message: 'deve conter no mínimo 11 números!'}
                        
    validates_length_of :celular, maximum: 11, message: 'deve conter no máximo 11 números!'
                         
    validates :email, presence: {message: 'não pode ser deixado em branco!'}, 
                      length: {minimum: 10, message: 'deve conter no mínimo 10 caracteres!'}, 
                      uniqueness: {message: 'email já cadastrado'} #Uniqueness não deixa criar dados duplicados no banco de dados!
    
    #validates_format_of Valida se o formato do objeto está correto
    validates_format_of :email,
                        :with => /\A[\w\._%-]+@[\w\.-]+\.[a-zA-Z]{2,4}\z/,
                        :if => Proc.new { |u| !u.email.nil? && !u.email.blank? },
                        :message => "Formato de email incorreto!"
                        
    #validates_length_of :observacao, in: 10..1000, message: 'deve conter entre 10 e 1000 caracteres!'
    
end

    #validacoes unidas em uma só https://www.devmedia.com.br/introducao-a-validacoes-com-ruby-on-rails/33926

    #validates :endereco, length: {in: 10..100, message: 'deve ter entre 10 e 100 caracteres'}