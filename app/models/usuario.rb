class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable
         
  validates :email, presence: {message: 'não pode ser deixado em branco!'}, 
                    length: {minimum: 8, message: 'deve conter no mínimos 8 caracteres!'}, 
                    uniqueness: {message: 'email já cadastrado'} #Uniqueness não deixa criar dados duplicados no banco de dados!
         
  #validates_format_of Valida se o formato do objeto está correto
  validates_format_of :email,
                      :with => /\A[\w\._%-]+@[\w\.-]+\.[a-zA-Z]{2,4}\z/,
                      :if => Proc.new { |u| !u.email.nil? && !u.email.blank? },
                      :message => "Formato de email incorreto!"

end
