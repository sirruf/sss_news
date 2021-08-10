module News
  class Post < ActiveRecord::Base
    validates :body, :title, presence: true
    default_scope  { order(:position) }
    scope :published, -> { where(published: true) }
    scope :hot_published, -> { unscoped.where(published: true, hot: true).order(:position) }
    before_save :check_lang

    acts_as_list

    def hot_gallery_image_title
      image = Photos::Picture.find_by(id: self.hot_gallery_image_id)
      if image.present?
        image.name
      end
    rescue
      nil
    end

    def main_gallery_image_title
      image = Photos::Picture.find_by(id: self.main_gallery_image_id)
      if image.present?
        image.name
      end
    rescue
      nil
    end

    def main_gallery
      image = Photos::Picture.find_by(id: self.main_gallery_image_id)
      if image.present?
        image.gallery rescue nil
      end
    rescue
      nil
    end

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

    def hot_gallery_image
      image = Photos::Picture.find_by(id: self.hot_gallery_image_id)
      image if image.present?
    rescue
      nil
    end

    def main_gallery_image
      image = Photos::Picture.find_by(id: self.main_gallery_image_id)
      image if image.present?
    rescue
      nil
    end

    def full_hot_gallery_image_url
      image = Photos::Picture.find_by(id: self.hot_gallery_image_id)
      if image.present?
        image.image.url
      end
    rescue
      nil
    end

    def full_main_gallery_image_url
      image = Photos::Picture.find_by(id: self.main_gallery_image_id)
      if image.present?
        image.image.url
      end
    rescue
      nil
    end

    private

    def check_lang
      if !self.lang.present? || self.lang == ''
        # self.lang = CLD.detect_language(self.body)[:code]
        self.lang = self.body.language_iso
      end
    end

  end
end
