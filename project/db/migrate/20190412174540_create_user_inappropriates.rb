class CreateUserInappropriates < ActiveRecord::Migration[5.2]
  def change
    create_table :user_inappropriates do |t|
      t.references :post, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
