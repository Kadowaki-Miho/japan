class AddImageIdToTweet < ActiveRecord::Migration
  def change
    add_column :tweets, :image_id, :integer
  end
end
