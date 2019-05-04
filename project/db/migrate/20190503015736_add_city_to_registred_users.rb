class AddCityToRegistredUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :registred_users, :city, :string
  end
end
