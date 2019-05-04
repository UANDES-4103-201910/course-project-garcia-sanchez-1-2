class AddPhoneToRegistredUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :registred_users, :phone, :integer
  end
end
