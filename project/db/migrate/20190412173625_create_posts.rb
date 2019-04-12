class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :country
      t.string :city
      t.string :geofence
      t.references :registred_user, foreign_key: true

      t.timestamps
    end
  end
end
