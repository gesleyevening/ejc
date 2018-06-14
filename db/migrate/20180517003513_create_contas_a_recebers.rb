class CreateContasARecebers < ActiveRecord::Migration[5.0]
  def change
    create_table :contas_a_recebers do |t|
      t.date :data_lancamento
      t.text :descricao
      t.float :valor

      t.timestamps
    end
  end
end
