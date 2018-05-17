class CreateContasAPagars < ActiveRecord::Migration[5.0]
  def change
    create_table :contas_a_pagars do |t|
      t.date :data_lancamento
      t.string :descricao
      t.float :valor

      t.timestamps
    end
  end
end
