class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :photo
      t.text :biography
      t.string :geofence
      t.string :country
      t.string :city
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
