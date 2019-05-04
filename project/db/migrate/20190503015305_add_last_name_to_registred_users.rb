class AddLastNameToRegistredUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :registred_users, :last_name, :string
  end
end
