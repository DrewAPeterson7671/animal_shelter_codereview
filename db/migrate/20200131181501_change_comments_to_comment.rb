class ChangeCommentsToComment < ActiveRecord::Migration[5.2]
  def change
    remove_column :animals, :comments
    add_column :animals, :comment, :text
  end
end
