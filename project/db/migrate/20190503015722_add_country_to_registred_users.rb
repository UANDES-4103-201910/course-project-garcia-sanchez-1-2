class AddCountryToRegistredUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :registred_users, :country, :string
  end
end
