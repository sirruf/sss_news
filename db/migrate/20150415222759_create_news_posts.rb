class CreateNewsPosts < ActiveRecord::Migration
  def change
    create_table :news_posts do |t|
      t.string :title
      t.text :body
      t.integer :position
      t.boolean :published
      t.boolean :hot, default: false
      t.string :hot_title
      t.integer :hot_gallery_image_id
      t.string :hot_gallery_image_size
      t.integer :main_gallery_image_id
      t.string :main_gallery_image_size

      t.timestamps
    end
  end
end
