class CreateCommentImages < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_images do |t|
      t.string :link

      t.timestamps
    end
  end
end
