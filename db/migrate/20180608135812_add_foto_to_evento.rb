class AddFotoToEvento < ActiveRecord::Migration[5.0]
  def change
    add_column :eventos, :foto, :string
  end
end
