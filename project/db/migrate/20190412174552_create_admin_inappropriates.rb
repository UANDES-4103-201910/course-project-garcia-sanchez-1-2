class CreateAdminInappropriates < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_inappropriates do |t|
      t.references :post, foreign_key: true
      t.references :admin, foreign_key: true

      t.timestamps
    end
  end
end
