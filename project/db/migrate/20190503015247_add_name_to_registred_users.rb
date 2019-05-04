class AddNameToRegistredUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :registred_users, :name, :string
  end
end
