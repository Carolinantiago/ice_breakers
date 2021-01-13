class AddUserAdmin < ActiveRecord::Migration[6.0]
  def change
    add_reference :tips, :admin_user
  end
end
