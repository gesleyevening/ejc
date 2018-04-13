class DropUsuario < ActiveRecord::Migration[5.0]
  def change
    drop_table :usuarios
    drop_table :usuario
  end
end