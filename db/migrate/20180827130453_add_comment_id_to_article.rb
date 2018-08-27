class AddCommentIdToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :comments_id, :integer, array:true, default: []
  end
end
