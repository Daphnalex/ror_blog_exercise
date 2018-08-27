class AddColumnsToCommentsTable < ActiveRecord::Migration
  def change
    add_column :comments, :author, :string
    add_column :comments, :content, :text
  end
end
