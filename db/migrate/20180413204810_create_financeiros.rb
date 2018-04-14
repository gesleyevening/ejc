class CreateFinanceiros < ActiveRecord::Migration[5.0]
  def change
    create_table :financeiros do |t|
      t.date :dta_lancamento
      t.string :descricao
      t.integer :tipo_financeiro_id
      t.datetime :created_at
      t.datetime :updated_at
     
      t.timestamps
    end
  end
end