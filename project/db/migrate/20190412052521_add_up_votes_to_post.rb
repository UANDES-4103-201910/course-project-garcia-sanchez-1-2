class AddUpVotesToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :up_vote, :integer
  end
end
