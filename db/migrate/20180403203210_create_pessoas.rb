class CreatePessoas < ActiveRecord::Migration[5.0]
  def change
    create_table :pessoas do |t|
      t.string :nom_pessoa
      t.datetime :dta_nascimento
      t.integer :num_ano_inicial
      t.string :des_endereco
      t.string :num_telefone
      t.string :num_celular
      t.string :des_email
      t.string :observacao
      t.integer :tipo_pessoa_id

      t.timestamps
    end
  end
end
