class CreateTipoPessoas < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_pessoas do |t|
      t.string :des_tipo_pessoa

      t.timestamps
    end
  end
end
