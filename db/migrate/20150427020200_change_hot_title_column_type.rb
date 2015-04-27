class ChangeHotTitleColumnType < ActiveRecord::Migration
  def up
    change_column :news_posts, :hot_title, :text
  end

  def down
    # This might cause trouble if you have strings longer
    # than 255 characters.
    change_column :news_posts, :hot_title, :string
  end
end
