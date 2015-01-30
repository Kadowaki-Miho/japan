class RemoveTweetIdFromImage < ActiveRecord::Migration
  def change
    remove_column :images, :tweet_id, :integer
  end
end
