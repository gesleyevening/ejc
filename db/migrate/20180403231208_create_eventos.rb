class CreateEventos < ActiveRecord::Migration[5.0]
  def change
    create_table :eventos do |t|
      t.string :titulo
      t.string :dta_evento
      t.string :informacoes

      t.timestamps
    end
  end
end