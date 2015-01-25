class Tag < ActiveRecord::Base
  has_and_brlongs_to_many :tweets
end
