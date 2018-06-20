class AlterandoCamposData < ActiveRecord::Migration[5.0]
  def change
    change_column :eventos, :dta_evento, :string
    change_column :jovems, :data_nascimento, :string
    change_column :tios, :data_nascimento, :string
    change_column :contas_a_pagars, :data_lancamento, :string
    change_column :contas_a_recebers, :data_lancamento, :string
  end
end
