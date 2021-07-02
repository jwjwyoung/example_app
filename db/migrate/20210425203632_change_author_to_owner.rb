class ChangeAuthorToOwner < ActiveRecord::Migration[6.0]
  def change
    rename_column :articles, :author, :owner
    rename_column :articles, :title, :header
  end
end
