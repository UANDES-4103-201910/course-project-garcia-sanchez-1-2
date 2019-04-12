class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :photo
      t.string :bio
      t.string :geofence
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
