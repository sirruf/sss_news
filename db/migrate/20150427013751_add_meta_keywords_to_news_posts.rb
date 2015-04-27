class AddMetaKeywordsToNewsPosts < ActiveRecord::Migration
  def change
    add_column :news_posts, :meta_keywords, :text
  end
end
