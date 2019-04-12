class CreateSystemAdminDumpsters < ActiveRecord::Migration[5.2]
  def change
    create_table :system_admin_dumpsters do |t|
      t.references :post, foreign_key: true
      t.references :system_admin, foreign_key: true

      t.timestamps
    end
  end
end
