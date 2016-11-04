class RemoveUserName < ActiveRecord::Migration[5.0]
  def change
    remove_column :Messages, :user_name
  end
end
