class RemoveReference < ActiveRecord::Migration[6.0]
  def change
    remove_reference :comments, :article, foreign_key: true
  end
end
