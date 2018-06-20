require 'rails_helper'

RSpec.describe Tio, type: :model do
  it "é valido" do
      i = Tio.new
      i.nome = "Tiosfhsfsdfsdvdjfskjabkbs"
      i.ano_inicio = "2018-12-1"
      i.celular = "31987446523"
      i.email = "teste@email.com"
      expect(i).to be_valid
  end      
  it "é invalido sem nome" do
      i = Tio.new
      i.nome = nil
      i.ano_inicio = "2018-12-1"
      i.celular = "31987446523"
      i.email = "teste@email.com"
      expect(i).to_not be_valid
  end
  it "é invalido sem anoIncio" do
      i = Tio.new
      i.nome = "Tiosfhsfsdfsdvdjfskjabkbs"
      i.ano_inicio = nil
      i.celular = "31987446523"
      i.email = "teste@email.com"
      expect(i).to_not be_valid
  end
  it "é invalido sem celular" do
      i = Tio.new
      i.nome = "Tiosfhsfsdfsdvdjfskjabkbs"
      i.ano_inicio = "2018-12-1"
      i.celular = nil
      i.email = "teste@email.com"
      expect(i).to_not be_valid
  end
  it "é invalido sem email" do
      i = Tio.new
      i.nome = "Tiosfhsfsdfsdvdjfskjabkbs"
      i.ano_inicio = "2018-12-1"
      i.celular = "31987446523"
      i.email = nil
      expect(i).to_not be_valid
  end
 end