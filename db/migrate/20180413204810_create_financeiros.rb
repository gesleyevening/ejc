class CreateFinanceiros < ActiveRecord::Migration[5.0]
  def change
    create_table :financeiros do |t|
      t.date :dta_lancamento
      t.text :descricao
      t.integer :tipo_financeiro_id
      t.datetime :criado_em
      t.datetime :atualizado_em
     
      t.timestamps
    end
  end
end