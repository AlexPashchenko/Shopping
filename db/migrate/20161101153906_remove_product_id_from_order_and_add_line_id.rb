class RemoveProductIdFromOrderAndAddLineId < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :product_id
    add_column :orders, :line_id, :integer
  end
end
