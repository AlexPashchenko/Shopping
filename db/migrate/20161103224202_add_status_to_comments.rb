class AddStatusToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :Messages, :status, :string
  end
end
