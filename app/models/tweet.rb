class Tweet < ActiveRecord::Base
  #アクセサメゾット（クラスやモジュールにインスタンス変数を読み出すためのもの）
  attr_reader :image_url
  #assosiation
  belongs_to :user
  has_many :images
  has_many :likes
  has_and_belongs_to_many :tags

  #callback
  after_save :after_create_image

  def after_create_image
    Image.create(image: self.image_url, tweet_id: self.id)
  end

  def set_image_url(image_url)
    @image_url = image_url
  end

end
