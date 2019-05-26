class AddRoleToRegistredUser < ActiveRecord::Migration[5.2]
  def change
    add_column :registred_users, :role, :integer
  end
end
