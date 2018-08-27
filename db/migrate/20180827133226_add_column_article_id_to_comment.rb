class AddColumnArticleIdToComment < ActiveRecord::Migration
  def change
      add_column :comments, :article_id, :integer
  end
end
