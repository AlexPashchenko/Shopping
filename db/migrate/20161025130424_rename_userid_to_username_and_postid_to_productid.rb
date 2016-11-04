class RenameUseridToUsernameAndPostidToProductid < ActiveRecord::Migration[5.0]
  def change
        rename_column :Messages, :user_id, :user_name
        rename_column :Messages, :post_id, :product_id
  end
end
