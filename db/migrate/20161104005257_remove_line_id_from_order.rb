class RemoveLineIdFromOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :line_id
  end
end
