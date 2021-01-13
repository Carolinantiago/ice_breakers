class AddAdminUserToTip < ActiveRecord::Migration[6.0]
  def change
    remove_column :tips, :user_id
  end
end
