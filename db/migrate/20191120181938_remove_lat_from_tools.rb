class RemoveLatFromTools < ActiveRecord::Migration[5.2]
  def change
    remove_column :tools, :lat, :string
  end
end
