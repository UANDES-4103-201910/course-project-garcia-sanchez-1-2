class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :country
      t.string :city
      t.string :geofence

      t.timestamps
    end
  end
end
