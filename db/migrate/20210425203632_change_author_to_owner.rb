class ChangeAuthorToOwner < ActiveRecord::Migration[6.0]
  def change
    rename_column :articles, :author, :owner
  end
end
