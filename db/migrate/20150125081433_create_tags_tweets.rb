class CreateTagsTweets < ActiveRecord::Migration
  def change
    create_table :tags_tweets, :id => false do |t|
      t.integer :tweet_id
      t.integer :tag_id
    end
  end
end