class AddTweetIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :tweet_id, :integer
  end
end
