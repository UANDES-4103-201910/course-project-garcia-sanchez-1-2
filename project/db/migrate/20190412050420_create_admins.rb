class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :mail
      t.string :password
      t.string :username
      t.string :geofence

      t.timestamps
    end
  end
end
