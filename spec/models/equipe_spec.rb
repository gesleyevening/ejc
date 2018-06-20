require 'rails_helper'

RSpec.describe Equipe, type: :model do
  it "é valido" do
      i = Equipe.new
      i.nome = "Salaaaaaaaaaaaaaaaaa"
      i.ano = "2018"
      expect(i).to be_valid
  end      
  it "é invalido sem nome" do
      i = Equipe.new
      i.nome = nil
      i.ano = "2018"
      expect(i).to_not be_valid
  end
  it "é invalido sem ano" do
      i = Equipe.new
      i.nome = "Salaaaaaaaaaaaaaaaaa"
      i.ano = nil
      expect(i).to_not be_valid
  end
 end