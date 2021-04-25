class ChangeArticleToBlog < ActiveRecord::Migration[6.0]
  def change
    rename_table :articles, :blogs
  end
end
