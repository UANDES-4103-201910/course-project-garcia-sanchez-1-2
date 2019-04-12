class CreateSystemAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :system_admins do |t|
      t.string :mail
      t.string :password
      t.string :username

      t.timestamps
    end
  end
end