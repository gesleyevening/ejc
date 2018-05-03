class CreateEquipePessoas < ActiveRecord::Migration[5.0]
  def change
    create_table :equipe_pessoas do |t|
      t.integer :equipe_id
      t.integer :pessoa_id

      t.timestamps
    end
  end
end
