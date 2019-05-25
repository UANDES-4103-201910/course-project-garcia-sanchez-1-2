class AddAdminToRegistredUser < ActiveRecord::Migration[5.2]
  def change
    add_column :registred_users, :admin, :boolean
  end
end
