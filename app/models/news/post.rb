module News
  class Post < ActiveRecord::Base
    validates :body, :title, presence: true
    belongs_to :hot_image, class_name: 'Picture', foreign_key: 'hot_gallery_picture_id'
    belongs_to :main_image, class_name: 'Picture', foreign_key: 'main_gallery_image_id'
  end
end
