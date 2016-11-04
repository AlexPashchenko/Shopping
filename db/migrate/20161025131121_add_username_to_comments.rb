class AddUsernameToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :Messages, :user_name, :string
  end
end
