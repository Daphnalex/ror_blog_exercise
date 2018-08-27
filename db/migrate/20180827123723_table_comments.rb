class TableComments < ActiveRecord::Migration
  def change
    create_table :comment do |comment|
      comment.string :author
      comment.text :content
    end
  end
end
