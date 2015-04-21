module News
  class Post < ActiveRecord::Base
    validates :body, :title, presence: true
    default_scope  { order(:created_at => :desc) }
    scope :published, -> { where(published: true) }

    def hot_gallery_image_url
      image = Photos::Picture.find_by(id: self.hot_gallery_image_id)
      if image.present?
        self.hot_gallery_image_size.present? ? image.image.thumb(self.hot_gallery_image_size).url : image.image.url
      end
    rescue
      nil
    end

    def main_gallery_image_url
      image = Photos::Picture.find_by(id: self.main_gallery_image_id)
      if image.present?
        self.main_gallery_image_size.present? ? image.image.thumb(self.main_gallery_image_size).url : image.image.url
      end
    rescue
      nil
    end

  end
end
