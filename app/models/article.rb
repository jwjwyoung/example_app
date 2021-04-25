class Article < ApplicationRecord
  has_many :comments
  def self.has_no_author
    where(author: nil)
  end
end
