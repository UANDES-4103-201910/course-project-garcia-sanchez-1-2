class CreateInappropiates < ActiveRecord::Migration[5.2]
  def change
    create_table :inappropiates do |t|

      t.timestamps
    end
  end
end
