class AddLangToNewsPosts < ActiveRecord::Migration
  def change
    add_column :news_posts, :lang, :string
  end
end
