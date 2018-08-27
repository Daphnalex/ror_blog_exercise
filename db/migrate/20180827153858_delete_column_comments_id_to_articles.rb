class DeleteColumnCommentsIdToArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :comments_id
  end
end
