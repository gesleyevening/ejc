class CreateEquipes < ActiveRecord::Migration[5.0]
  def change
    create_table :equipes do |t|
      t.integer :ano
      t.string :nome
      t.string :observacoes
      t.string :integrantes

      t.timestamps
    end
  end
end