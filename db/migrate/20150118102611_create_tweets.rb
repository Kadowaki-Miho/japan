class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string        :place
      t.text          :image
      t.text          :category
      t.timestamps
    end
  end
end
