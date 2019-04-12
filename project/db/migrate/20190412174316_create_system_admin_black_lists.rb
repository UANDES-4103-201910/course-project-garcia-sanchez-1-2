class CreateSystemAdminBlackLists < ActiveRecord::Migration[5.2]
  def change
    create_table :system_admin_black_lists do |t|
      t.references :user, foreign_key: true
      t.references :system_admin, foreign_key: true

      t.timestamps
    end
  end
end
