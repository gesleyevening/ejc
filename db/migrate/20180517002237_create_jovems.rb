class CreateJovems < ActiveRecord::Migration[5.0]
  def change
    create_table :jovems do |t|
      t.string :nome
      t.date :data_nascimento
      t.integer :ano_inicio
      t.string :endereco
      t.string :telefone
      t.string :celular
      t.string :email
      t.text :observacao

      t.timestamps
    end
  end
end
