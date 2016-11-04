class RemoveUsernameFromCommentsAndAddUserid < ActiveRecord::Migration[5.0]
  def change
    remove_column :Messages, :user_name
    add_column :Messages, :user_id, :integer
  end
end
