class RemoveImageIdFromTweet < ActiveRecord::Migration
  def change
    remove_column :tweets, :image_id, :integer
  end
end
