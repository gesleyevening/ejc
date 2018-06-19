require 'rails_helper'

RSpec.describe Evento, type: :model do
  it "é valido" do
      i = Evento.new
      i.titulo = "Evento"
      expect(i).to be_valid
  end      
  it "é invalido sem titulo" do
      i = Evento.new
      i.titulo = nil
      expect(i).to_not be_valid
  end
end