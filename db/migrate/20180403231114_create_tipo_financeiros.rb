class CreateTipoFinanceiros < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_financeiros do |t|
      t.string :des_tipo_financeiro

      t.timestamps
    end
  end
end
