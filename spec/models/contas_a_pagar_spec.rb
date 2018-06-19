require 'rails_helper'

RSpec.describe ContasAPagar, type: :model do
  it "é valido" do
      i = ContasAPagar.new
      i.descricao = "Conta de àgua"
      i.valor = 100
      expect(i).to be_valid
  end      
  it "é invalido sem descricao" do
     i = ContasAPagar.new
     i.descricao = nil
     i.valor = 100
     expect(i).to_not be_valid
  end
  it "é invalido sem valor" do
     i = ContasAPagar.new
     i.descricao = "Conta de àgua"
     i.valor = nil
     expect(i).to_not be_valid
  end
 end