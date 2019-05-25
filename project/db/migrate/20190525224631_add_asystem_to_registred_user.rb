class AddAsystemToRegistredUser < ActiveRecord::Migration[5.2]
  def change
    add_column :registred_users, :asystem, :boolean
  end
end
