	class CreateRegistredUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :registred_users do |t|
      t.string :name
      t.string :last_name
      t.string :mail
      t.string :password
      t.string :username
      t.integer :phone
      t.string :city
      t.string :country	

      t.timestamps
    end
  end
end
