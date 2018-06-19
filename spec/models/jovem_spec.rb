require 'rails_helper'

RSpec.describe Jovem, type: :model do
  it "é valido" do
      i = Jovem.new
      i.nome = "Jovem"
      i.ano_inicio = "2018-12-1, 23:59:59"
      i.celular = "31987446523"
      i.email = "teste@email.com"
      expect(i).to be_valid
  end      
  it "é invalido sem nome" do
      i = Jovem.new
      i.nome = nil
      i.ano_inicio = "2018-12-1, 23:59:59"
      i.celular = "31987446523"
      i.email = "teste@email.com"
      expect(i).to_not be_valid
  end
  it "é invalido sem anoIncio" do
      i = Jovem.new
      i.nome = "Jovem"
      i.ano_inicio = nil
      i.celular = "31987446523"
      i.email = "teste@email.com"
      expect(i).to_not be_valid
  end
  it "é invalido sem celular" do
      i = Jovem.new
      i.nome = "Jovem"
      i.ano_inicio = "2018-12-1, 23:59:59"
      i.celular = nil
      i.email = "teste@email.com"
      expect(i).to_not be_valid
  end
  it "é invalido sem email" do
      i = Jovem.new
      i.nome = "Jovem"
      i.ano_inicio = "2018-12-1, 23:59:59"
      i.celular = "31987446523"
      i.email = nil
      expect(i).to_not be_valid
  end
 end