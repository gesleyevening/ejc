class InicioController < ApplicationController
   def index
      @eventos = Evento.all
   end 
end